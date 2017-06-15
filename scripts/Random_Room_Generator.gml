/// Random Room Generator
// Created by Tom Gardiner / TomboFry

// PRECAUTION:
// In the room editor, make sure the width and height are both divisible by 32.

// USING THE DATA:
// You can refer to the array "rData[x,y]" where x and y are co-ordinates inside the array

// ARGUMENTS/PARAMETERS:
// argument0 = no. of rooms
// argument1 = minimum room width
// argument2 = maximum room width
// argument3 = minimum room height
// argument4 = maximum room height

// BEGIN:

// initialize array
for(j = 0; j < room_height/32; j++){
    for(i = 0; i < room_width/32; i++){
        rData[i,j] = ".";
    }
}

// Create as many rooms as we chose to
for (k = 0; k < argument0; k++){
    rooms[k,0] = irandom_range(argument1,argument2);       // width of the room
    rooms[k,1] = irandom_range(argument3,argument4);       // height of the room
    rooms[k,2] = 2+irandom((room_width/32)-rooms[k,0]-4);  // starting x position (sx)
    rooms[k,3] = 2+irandom((room_height/32)-rooms[k,1]-4); // starting y position (sy)

    // Populate the array with our room
    for (j = 0; j < rooms[k,1]; j++){
        for(i = 0; i < rooms[k,0]; i++){
            rData[rooms[k,2]+i,rooms[k,3]+j] = "_";
        }
    }
    // If we're on at least our second room
    if(k > 0){
        // Set the corridor x position to be the sx
        // Set the corridor y position to be the sy
        corx = rooms[k,2];
        cory = rooms[k,3];
        // if sx of the current room is bigger than the previous room
        // then we need to go left
        if(corx > rooms[k-1,2]+rooms[k-1,0]){
            // Keep looping until corx is smaller than the previous room's right edge
            while(corx > rooms[k-1,2]+rooms[k-1,0]-2){
                // Add the corridor to the array
                rData[corx,cory+1] = "_";
                corx-=1;
                // Check just in case we create an eternal loop of shame
                if(corx <= 2){
                    break;
                }
            }
            corx++;
        // Otherwise need to go right
        } else if(corx < rooms[k-1,2]+1){
            // Add the width of the room to corx
            corx += rooms[k,0]-1;
            // Loop until corx is bigger than the previous room's left edge
            while(corx < rooms[k-1,2]+3){
                rData[corx,cory] = "_";
                corx+=1;
                if(corx > (room_width/32)-2){
                    break;
                }
            }
            corx--;
        }
        // If sy of current room is bigger than prev room's sy
        // then we need to go up
        if(cory > rooms[k-1,3]){
            // Loop until cory is less than the previous room's bottom edge
            while(cory > rooms[k-1,3]+rooms[k-1,1]-3){
                // Add the corridor to the array
                rData[corx,cory] = "_";
                cory-=1;
                // Check just in case we create an eternal loop of shame
                if(cory <= 2){
                    break;
                }
            }
        // Otherwise we need to go down
        } else if(cory < rooms[k-1,3]){
            cory++;
            while(cory < rooms[k-1,3]+2){
                // Add the corridor to the array
                rData[corx,cory] = "_";
                cory+=1;
                // Check just in case we create an eternal loop of shame
                // Checks to see if cory is bigger than the lowest point the room's top edge could be
                if(cory > (room_height/32)-rooms[k,1]-2){
                    break;
                }
            }
        }
    }
}
// For every element in the array (n = vertical, m = horizontal)
for(n = 0; n < room_height/32; n++){
    for(m = 0; m < room_width/32; m++){
        // If the element is the floor
        if(rData[m,n] == "_"){
            // Check if the element to the left is empty
            if(rData[m-1,n] == "."){
                // And replace it with a wall
                rData[m-1,n] = "@";
            }
            // Checks the element to the right
            if(rData[m+1,n] == "."){
                rData[m+1,n] = "@";
            }
            // Element above
            if(rData[m,n-1] == "."){
                rData[m,n-1] = "@";
            }
            // Element below
            if(rData[m,n+1] == "."){
                rData[m,n+1] = "@";
            }
            // Top left
            if(rData[m-1,n-1] == "."){
                rData[m-1,n-1] = "@";
            }
            // Bottom left
            if(rData[m-1,n+1] == "."){
                rData[m-1,n+1] = "@";
            }
            // Bottom right
            if(rData[m+1,n+1] == "."){
                rData[m+1,n+1] = "@";
            }
            // Top right
            if(rData[m+1,n-1] == "."){
                rData[m+1,n-1] = "@";
            }
        }
    }
}