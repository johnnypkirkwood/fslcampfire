UpdateLKL job = new UpdateLKL();
String sch = '0 0 * * * ?';
System.schedule('Update Location Once an Hour', sch, job);
