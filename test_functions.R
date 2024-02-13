test_function <- function(){
    if (!dir.exists("test")){
        dir.create("test")
    }
    write.table("Successfully execute the function", "test/test.txt", col.names=FALSE, row.names = FALSE, append=TRUE, quote=FALSE)
    FaaSr::faasr_put_file(local_folder="test", local_file="test.txt", remote_folder="test", remote_file="test.txt") 
}

null_function <- function(){
    NULL
}