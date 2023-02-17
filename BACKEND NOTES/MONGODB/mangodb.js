
// mangodb objectooda name BSON nu solluvanga epdi frontend la JSON dat nu sollurumoo athe maar mango oda data bson data va irukum


// use imdb

db.createCollection("movies")

// show collections

db.movies.find()

db.movies.insert({"id":1,"mentor":"RRR"})

db.movies.find()

db.movies.insert({
                "id":2,
                "mentor":"vikram",
                "rating":9,
                "summary":"vikram movie is a best movie" 
                
                 })
                 
db.movies.find()        


db.movies.insertMany(

    [
        {
            "id":5,
            "mentor":"vikram",
            "rating":9,
            "summary":"vikram movie is a best movie" 
            
             },
             {
                "id":6,
                "mentor":"vikram",
                "rating":9,
                "summary":"vikram movie is a best movie" 
                
                 },{
                    "id":7,
                    "mentor":"vikram",
                    "rating":9,
                    "summary":"vikram movie is a best movie" 
                    
                     }
    ]
)

db.movies.find()  

db.movies.find({}).pretty({})  

db.movies.find({mentor:"RRR"})  

db.movies.find({rating:9})

db.movies.findOne({rating:9})

db.movies.find({ _id: ObjectId("63eda78afdd5c470e27d6eca")})

db.movies.deleteOne({_id: ObjectId("63eda78afdd5c470e27d6eca")})

db.movies.deleteOne({rating:9})

db.movies.deleteMany({rating:9})

db.movies.deleteMany({})


//read-->find,findOne
//crete-->insert,insertOne
// delete-->deleteOne,deleteMany


// updateOne and updateMany


// db.movies.updateOne({ data va finda panrathukaaga},{ athula $ pottu set nu pottu namba update panna vendiya data va potta update aagum})

db.movies.updateOne(
    { _id: ObjectId("63eeee15324f9c7eb8791523")},
    {"$set":{
        "mentor":"vikram 2"
    }}
)

db.movies.updateMany(
    {"mentor":"vikram 3"},
    {"$set":{
        "mentor":"vikram 4",
        "hero":"kamal"
    }},
    {
        upsert:true

        // upsert true nu kudukarathooda use vanthu mango vanthu oru batch ku 
        // 20 object thaan eduuthukum namba 100 data orae ithula kududkarathaala
        //  5 bath aa eduthukum appo ellathhuluyim update pannathu athukaga thaan
        //  upsert true nu kudukuram apdi kudukkumboothu ella data liyum update aagum
    }
)


//  toarray podumboothu 20 20 ya split pannama motha data vum vanthudum
db.movies.find().toarray()    

db.movies.find().forEach((movie)=>{print("movie name :"+"  "+movie.mentor)})

db.students.insertMany([
    {
        "mentor":"dhanush1",
        "age":23
    },
    {
        "mentor":"dhanush1",
        "age":23
    },
    {
        "mentor":"dhanush1",
        "age":23
    },
    {
        "mentor":"dhanush1",
        "age":23
    }
])
// lookup nrathu another collection aa already collection kuuda irukka nu paakaratuhuku use agathu
//  irthu read panrathuku mattum thaan use aagum original data change aagathu


db.movies.aggregate([
    {
        $lookup:{
            from:"students",
            localField:"mentor",
            foreignField:"mentor",
            as:"student_detail"
        }
    }
])

// gt-greater then
// ly-lesserthan
// sort la 1- ascent order
// sort la -1 - descent order
db.students.find({age:{$gt:20}})

db.students.find({age:{$lt:20}})
db.students.find({age:{$not:{$gt:20,$lt:23}}}).sort({age:1})
db.students.find({age:{$not:{$gt:20,$lt:23}}}).sort({age:-1})

db.students.find({age:{$not:{$gt:20,$lt23}}})

db.students.find({},{name:1,batch:1})







