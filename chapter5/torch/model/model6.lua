

--As this model is for cifar10, input picture is resized as 3 * 32 * 32

model = {}


function setModel()
   
   model = {
      
      operations = {
	 
	 "setData3D",
	 "convolution",
	 "relu",
	 --"maxPooling",
	 "convolution",
	 "relu",
	 "reshape",
	 "linear",
	 "sigmoid",
	 "linear",
	 "sigmoid"
      },
      
      --following is a bit to represent each activations of nodes and weights
      
      bitForward = {
	 32,32,32,32
      },
      
      bitBackward = {
	 32,32,32,32
      },
      
      bitWeight = {
	 32,32,32,32
      },
      
      bitUpdate = {	 
      },
      
      len = 10,
      nodeLen   = 6,
      weightLen = 4,
      
      kernel = {
	 width  = 3,
	 height = 3
      },
      
      layerN = {
	 
	 {3,32,32},--setdata
	 {5,32,32},--convolution
	 {5,32,32},--relu
	 {8,32,32},--convolution
	 {8,32,32},--relu
	 --{5,16,16},--pooling
	 8*32*32,    --reshape
	 500,      --linear
	 500,      --sigmoid
	 10,       --linear
	 10        --sigmoid
      },
      
      node    = {},
      nodeB   = {},
      nodeT   = {},
      eNode   = {},
      eNodeB  = {},
      weight  = {},
      weightB = {},
      dWeight = {},
      teacher = {}
   }
   
end
