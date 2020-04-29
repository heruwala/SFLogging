@IsTest
private class LogTest {

    @IsTest
    public static void logTest() {
        Log.push('MyClass.methodA');
        insert new Task(Subject = 'Test');
        Log.push('MyClass.methodB');
        Log.message('Doing something');
        insert new Task(Subject = 'Test');
        Log.pop();
        List<Task> tasks = [select Id from Task];
        Log.message('Doing something more');        
        Log.pop();        
	}
}