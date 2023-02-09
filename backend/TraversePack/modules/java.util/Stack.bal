import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import backendv2.java.lang as javalang;
import backendv2.java.util.'stream as javautilstream;
import backendv2.java.util.'function as javautilfunction;

# Ballerina class mapping for the Java `java.util.Stack` class.
@java:Binding {'class: "java.util.Stack"}
public distinct class Stack {

    *java:JObject;
    *Vector;

    # The `handle` field that stores the reference to the `java.util.Stack` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `java.util.Stack` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.util.Stack` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
    # The function that maps to the `add` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function add(javalang:Object arg0) returns boolean {
        return java_util_Stack_add(self.jObj, arg0.jObj);
    }

    # The function that maps to the `add` method of `java.util.Stack`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `javalang:Object` value required to map with the Java method parameter.
    public function add2(int arg0, javalang:Object arg1) {
        java_util_Stack_add2(self.jObj, arg0, arg1.jObj);
    }

    # The function that maps to the `addAll` method of `java.util.Stack`.
    #
    # + arg0 - The `Collection` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function addAll(Collection arg0) returns boolean {
        return java_util_Stack_addAll(self.jObj, arg0.jObj);
    }

    # The function that maps to the `addAll` method of `java.util.Stack`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `Collection` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function addAll2(int arg0, Collection arg1) returns boolean {
        return java_util_Stack_addAll2(self.jObj, arg0, arg1.jObj);
    }

    # The function that maps to the `addElement` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    public function addElement(javalang:Object arg0) {
        java_util_Stack_addElement(self.jObj, arg0.jObj);
    }

    # The function that maps to the `capacity` method of `java.util.Stack`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function capacity() returns int {
        return java_util_Stack_capacity(self.jObj);
    }

    # The function that maps to the `clear` method of `java.util.Stack`.
    public function clear() {
        java_util_Stack_clear(self.jObj);
    }

    # The function that maps to the `clone` method of `java.util.Stack`.
    #
    # + return - The `javalang:Object` value returning from the Java mapping.
    public function clone() returns javalang:Object {
        handle externalObj = java_util_Stack_clone(self.jObj);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `contains` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function contains(javalang:Object arg0) returns boolean {
        return java_util_Stack_contains(self.jObj, arg0.jObj);
    }

    # The function that maps to the `containsAll` method of `java.util.Stack`.
    #
    # + arg0 - The `Collection` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function containsAll(Collection arg0) returns boolean {
        return java_util_Stack_containsAll(self.jObj, arg0.jObj);
    }

    # The function that maps to the `copyInto` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
    # + return - The `error?` value returning from the Java mapping.
    public function copyInto(javalang:Object[] arg0) returns error? {
        java_util_Stack_copyInto(self.jObj, check jarrays:toHandle(arg0, "java.lang.Object"));
    }

    # The function that maps to the `elementAt` method of `java.util.Stack`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public function elementAt(int arg0) returns javalang:Object {
        handle externalObj = java_util_Stack_elementAt(self.jObj, arg0);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `elements` method of `java.util.Stack`.
    #
    # + return - The `Enumeration` value returning from the Java mapping.
    public function elements() returns Enumeration {
        handle externalObj = java_util_Stack_elements(self.jObj);
        Enumeration newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `empty` method of `java.util.Stack`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    public function empty() returns boolean {
        return java_util_Stack_empty(self.jObj);
    }

    # The function that maps to the `ensureCapacity` method of `java.util.Stack`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    public function ensureCapacity(int arg0) {
        java_util_Stack_ensureCapacity(self.jObj, arg0);
    }

    # The function that maps to the `equals` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return java_util_Stack_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `firstElement` method of `java.util.Stack`.
    #
    # + return - The `javalang:Object` value returning from the Java mapping.
    public function firstElement() returns javalang:Object {
        handle externalObj = java_util_Stack_firstElement(self.jObj);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `forEach` method of `java.util.Stack`.
    #
    # + arg0 - The `javautilfunction:Consumer` value required to map with the Java method parameter.
    public function forEach(javautilfunction:Consumer arg0) {
        java_util_Stack_forEach(self.jObj, arg0.jObj);
    }

    # The function that maps to the `get` method of `java.util.Stack`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public function get(int arg0) returns javalang:Object {
        handle externalObj = java_util_Stack_get(self.jObj, arg0);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getClass` method of `java.util.Stack`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = java_util_Stack_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `java.util.Stack`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return java_util_Stack_hashCode(self.jObj);
    }

    # The function that maps to the `indexOf` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    public function indexOf(javalang:Object arg0) returns int {
        return java_util_Stack_indexOf(self.jObj, arg0.jObj);
    }

    # The function that maps to the `indexOf` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    public function indexOf2(javalang:Object arg0, int arg1) returns int {
        return java_util_Stack_indexOf2(self.jObj, arg0.jObj, arg1);
    }

    # The function that maps to the `insertElementAt` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    public function insertElementAt(javalang:Object arg0, int arg1) {
        java_util_Stack_insertElementAt(self.jObj, arg0.jObj, arg1);
    }

    # The function that maps to the `isEmpty` method of `java.util.Stack`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    public function isEmpty() returns boolean {
        return java_util_Stack_isEmpty(self.jObj);
    }

    # The function that maps to the `iterator` method of `java.util.Stack`.
    #
    # + return - The `Iterator` value returning from the Java mapping.
    public function iterator() returns Iterator {
        handle externalObj = java_util_Stack_iterator(self.jObj);
        Iterator newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `lastElement` method of `java.util.Stack`.
    #
    # + return - The `javalang:Object` value returning from the Java mapping.
    public function lastElement() returns javalang:Object {
        handle externalObj = java_util_Stack_lastElement(self.jObj);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `lastIndexOf` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    public function lastIndexOf(javalang:Object arg0) returns int {
        return java_util_Stack_lastIndexOf(self.jObj, arg0.jObj);
    }

    # The function that maps to the `lastIndexOf` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    public function lastIndexOf2(javalang:Object arg0, int arg1) returns int {
        return java_util_Stack_lastIndexOf2(self.jObj, arg0.jObj, arg1);
    }

    # The function that maps to the `listIterator` method of `java.util.Stack`.
    #
    # + return - The `ListIterator` value returning from the Java mapping.
    public function listIterator() returns ListIterator {
        handle externalObj = java_util_Stack_listIterator(self.jObj);
        ListIterator newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `listIterator` method of `java.util.Stack`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `ListIterator` value returning from the Java mapping.
    public function listIterator2(int arg0) returns ListIterator {
        handle externalObj = java_util_Stack_listIterator2(self.jObj, arg0);
        ListIterator newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `notify` method of `java.util.Stack`.
    public function notify() {
        java_util_Stack_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `java.util.Stack`.
    public function notifyAll() {
        java_util_Stack_notifyAll(self.jObj);
    }

    # The function that maps to the `parallelStream` method of `java.util.Stack`.
    #
    # + return - The `javautilstream:Stream` value returning from the Java mapping.
    public function parallelStream() returns javautilstream:Stream {
        handle externalObj = java_util_Stack_parallelStream(self.jObj);
        javautilstream:Stream newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `peek` method of `java.util.Stack`.
    #
    # + return - The `javalang:Object` value returning from the Java mapping.
    public function peek() returns javalang:Object {
        handle externalObj = java_util_Stack_peek(self.jObj);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `pop` method of `java.util.Stack`.
    #
    # + return - The `javalang:Object` value returning from the Java mapping.
    public function pop() returns javalang:Object {
        handle externalObj = java_util_Stack_pop(self.jObj);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `push` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public function push(javalang:Object arg0) returns javalang:Object {
        handle externalObj = java_util_Stack_push(self.jObj, arg0.jObj);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `remove` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function remove(javalang:Object arg0) returns boolean {
        return java_util_Stack_remove(self.jObj, arg0.jObj);
    }

    # The function that maps to the `remove` method of `java.util.Stack`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public function remove2(int arg0) returns javalang:Object {
        handle externalObj = java_util_Stack_remove2(self.jObj, arg0);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `removeAll` method of `java.util.Stack`.
    #
    # + arg0 - The `Collection` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function removeAll(Collection arg0) returns boolean {
        return java_util_Stack_removeAll(self.jObj, arg0.jObj);
    }

    # The function that maps to the `removeAllElements` method of `java.util.Stack`.
    public function removeAllElements() {
        java_util_Stack_removeAllElements(self.jObj);
    }

    # The function that maps to the `removeElement` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function removeElement(javalang:Object arg0) returns boolean {
        return java_util_Stack_removeElement(self.jObj, arg0.jObj);
    }

    # The function that maps to the `removeElementAt` method of `java.util.Stack`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    public function removeElementAt(int arg0) {
        java_util_Stack_removeElementAt(self.jObj, arg0);
    }

    # The function that maps to the `removeIf` method of `java.util.Stack`.
    #
    # + arg0 - The `javautilfunction:Predicate` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function removeIf(javautilfunction:Predicate arg0) returns boolean {
        return java_util_Stack_removeIf(self.jObj, arg0.jObj);
    }

    # The function that maps to the `replaceAll` method of `java.util.Stack`.
    #
    # + arg0 - The `javautilfunction:UnaryOperator` value required to map with the Java method parameter.
    public function replaceAll(javautilfunction:UnaryOperator arg0) {
        java_util_Stack_replaceAll(self.jObj, arg0.jObj);
    }

    # The function that maps to the `retainAll` method of `java.util.Stack`.
    #
    # + arg0 - The `Collection` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function retainAll(Collection arg0) returns boolean {
        return java_util_Stack_retainAll(self.jObj, arg0.jObj);
    }

    # The function that maps to the `search` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    public function search(javalang:Object arg0) returns int {
        return java_util_Stack_search(self.jObj, arg0.jObj);
    }

    # The function that maps to the `set` method of `java.util.Stack`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `javalang:Object` value returning from the Java mapping.
    public function set(int arg0, javalang:Object arg1) returns javalang:Object {
        handle externalObj = java_util_Stack_set(self.jObj, arg0, arg1.jObj);
        javalang:Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `setElementAt` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    public function setElementAt(javalang:Object arg0, int arg1) {
        java_util_Stack_setElementAt(self.jObj, arg0.jObj, arg1);
    }

    # The function that maps to the `setSize` method of `java.util.Stack`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    public function setSize(int arg0) {
        java_util_Stack_setSize(self.jObj, arg0);
    }

    # The function that maps to the `size` method of `java.util.Stack`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function size() returns int {
        return java_util_Stack_size(self.jObj);
    }

    # The function that maps to the `sort` method of `java.util.Stack`.
    #
    # + arg0 - The `Comparator` value required to map with the Java method parameter.
    public function sort(Comparator arg0) {
        java_util_Stack_sort(self.jObj, arg0.jObj);
    }

    # The function that maps to the `spliterator` method of `java.util.Stack`.
    #
    # + return - The `Spliterator` value returning from the Java mapping.
    public function spliterator() returns Spliterator {
        handle externalObj = java_util_Stack_spliterator(self.jObj);
        Spliterator newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `stream` method of `java.util.Stack`.
    #
    # + return - The `javautilstream:Stream` value returning from the Java mapping.
    public function 'stream() returns javautilstream:Stream {
        handle externalObj = java_util_Stack_stream(self.jObj);
        javautilstream:Stream newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `subList` method of `java.util.Stack`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `List` value returning from the Java mapping.
    public function subList(int arg0, int arg1) returns List {
        handle externalObj = java_util_Stack_subList(self.jObj, arg0, arg1);
        List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `toArray` method of `java.util.Stack`.
    #
    # + return - The `javalang:Object[]` value returning from the Java mapping.
    public function toArray() returns javalang:Object[]|error {
        handle externalObj = java_util_Stack_toArray(self.jObj);
        javalang:Object[] newObj = [];
        handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
        int count = anyObj.length();
        foreach int i in 0 ... count - 1 {
            javalang:Object element = new (anyObj[i]);
            newObj[i] = element;
        }
        return newObj;
    }

    # The function that maps to the `toArray` method of `java.util.Stack`.
    #
    # + arg0 - The `javautilfunction:IntFunction` value required to map with the Java method parameter.
    # + return - The `javalang:Object[]` value returning from the Java mapping.
    public function toArray2(javautilfunction:IntFunction arg0) returns javalang:Object[]|error {
        handle externalObj = java_util_Stack_toArray2(self.jObj, arg0.jObj);
        javalang:Object[] newObj = [];
        handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
        int count = anyObj.length();
        foreach int i in 0 ... count - 1 {
            javalang:Object element = new (anyObj[i]);
            newObj[i] = element;
        }
        return newObj;
    }

    # The function that maps to the `toArray` method of `java.util.Stack`.
    #
    # + arg0 - The `javalang:Object[]` value required to map with the Java method parameter.
    # + return - The `javalang:Object[]` value returning from the Java mapping.
    public function toArray3(javalang:Object[] arg0) returns javalang:Object[]|error {
        handle externalObj = java_util_Stack_toArray3(self.jObj, check jarrays:toHandle(arg0, "java.lang.Object"));
        javalang:Object[] newObj = [];
        handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
        int count = anyObj.length();
        foreach int i in 0 ... count - 1 {
            javalang:Object element = new (anyObj[i]);
            newObj[i] = element;
        }
        return newObj;
    }

    # The function that maps to the `trimToSize` method of `java.util.Stack`.
    public function trimToSize() {
        java_util_Stack_trimToSize(self.jObj);
    }

    # The function that maps to the `wait` method of `java.util.Stack`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = java_util_Stack_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.util.Stack`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = java_util_Stack_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.util.Stack`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = java_util_Stack_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `java.util.Stack`.
#
# + return - The new `Stack` class generated.
public function newStack1() returns Stack {
    handle externalObj = java_util_Stack_newStack1();
    Stack newObj = new (externalObj);
    return newObj;
}

function java_util_Stack_add(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "add",
    'class: "java.util.Stack",
    paramTypes: ["java.lang.Object"]
} external;

function java_util_Stack_add2(handle receiver, int arg0, handle arg1) = @java:Method {
    name: "add",
    'class: "java.util.Stack",
    paramTypes: ["int", "java.lang.Object"]
} external;

function java_util_Stack_addAll(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "addAll",
    'class: "java.util.Stack",
    paramTypes: ["java.util.Collection"]
} external;

function java_util_Stack_addAll2(handle receiver, int arg0, handle arg1) returns boolean = @java:Method {
    name: "addAll",
    'class: "java.util.Stack",
    paramTypes: ["int", "java.util.Collection"]
} external;

function java_util_Stack_addElement(handle receiver, handle arg0) = @java:Method {
    name: "addElement",
    'class: "java.util.Stack",
    paramTypes: ["java.lang.Object"]
} external;

function java_util_Stack_capacity(handle receiver) returns int = @java:Method {
    name: "capacity",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_clear(handle receiver) = @java:Method {
    name: "clear",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_clone(handle receiver) returns handle = @java:Method {
    name: "clone",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_contains(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "contains",
    'class: "java.util.Stack",
    paramTypes: ["java.lang.Object"]
} external;

function java_util_Stack_containsAll(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "containsAll",
    'class: "java.util.Stack",
    paramTypes: ["java.util.Collection"]
} external;

function java_util_Stack_copyInto(handle receiver, handle arg0) = @java:Method {
    name: "copyInto",
    'class: "java.util.Stack",
    paramTypes: ["[Ljava.lang.Object;"]
} external;

function java_util_Stack_elementAt(handle receiver, int arg0) returns handle = @java:Method {
    name: "elementAt",
    'class: "java.util.Stack",
    paramTypes: ["int"]
} external;

function java_util_Stack_elements(handle receiver) returns handle = @java:Method {
    name: "elements",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_empty(handle receiver) returns boolean = @java:Method {
    name: "empty",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_ensureCapacity(handle receiver, int arg0) = @java:Method {
    name: "ensureCapacity",
    'class: "java.util.Stack",
    paramTypes: ["int"]
} external;

function java_util_Stack_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "java.util.Stack",
    paramTypes: ["java.lang.Object"]
} external;

function java_util_Stack_firstElement(handle receiver) returns handle = @java:Method {
    name: "firstElement",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_forEach(handle receiver, handle arg0) = @java:Method {
    name: "forEach",
    'class: "java.util.Stack",
    paramTypes: ["java.util.function.Consumer"]
} external;

function java_util_Stack_get(handle receiver, int arg0) returns handle = @java:Method {
    name: "get",
    'class: "java.util.Stack",
    paramTypes: ["int"]
} external;

function java_util_Stack_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_indexOf(handle receiver, handle arg0) returns int = @java:Method {
    name: "indexOf",
    'class: "java.util.Stack",
    paramTypes: ["java.lang.Object"]
} external;

function java_util_Stack_indexOf2(handle receiver, handle arg0, int arg1) returns int = @java:Method {
    name: "indexOf",
    'class: "java.util.Stack",
    paramTypes: ["java.lang.Object", "int"]
} external;

function java_util_Stack_insertElementAt(handle receiver, handle arg0, int arg1) = @java:Method {
    name: "insertElementAt",
    'class: "java.util.Stack",
    paramTypes: ["java.lang.Object", "int"]
} external;

function java_util_Stack_isEmpty(handle receiver) returns boolean = @java:Method {
    name: "isEmpty",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_iterator(handle receiver) returns handle = @java:Method {
    name: "iterator",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_lastElement(handle receiver) returns handle = @java:Method {
    name: "lastElement",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_lastIndexOf(handle receiver, handle arg0) returns int = @java:Method {
    name: "lastIndexOf",
    'class: "java.util.Stack",
    paramTypes: ["java.lang.Object"]
} external;

function java_util_Stack_lastIndexOf2(handle receiver, handle arg0, int arg1) returns int = @java:Method {
    name: "lastIndexOf",
    'class: "java.util.Stack",
    paramTypes: ["java.lang.Object", "int"]
} external;

function java_util_Stack_listIterator(handle receiver) returns handle = @java:Method {
    name: "listIterator",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_listIterator2(handle receiver, int arg0) returns handle = @java:Method {
    name: "listIterator",
    'class: "java.util.Stack",
    paramTypes: ["int"]
} external;

function java_util_Stack_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_parallelStream(handle receiver) returns handle = @java:Method {
    name: "parallelStream",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_peek(handle receiver) returns handle = @java:Method {
    name: "peek",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_pop(handle receiver) returns handle = @java:Method {
    name: "pop",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_push(handle receiver, handle arg0) returns handle = @java:Method {
    name: "push",
    'class: "java.util.Stack",
    paramTypes: ["java.lang.Object"]
} external;

function java_util_Stack_remove(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "remove",
    'class: "java.util.Stack",
    paramTypes: ["java.lang.Object"]
} external;

function java_util_Stack_remove2(handle receiver, int arg0) returns handle = @java:Method {
    name: "remove",
    'class: "java.util.Stack",
    paramTypes: ["int"]
} external;

function java_util_Stack_removeAll(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "removeAll",
    'class: "java.util.Stack",
    paramTypes: ["java.util.Collection"]
} external;

function java_util_Stack_removeAllElements(handle receiver) = @java:Method {
    name: "removeAllElements",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_removeElement(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "removeElement",
    'class: "java.util.Stack",
    paramTypes: ["java.lang.Object"]
} external;

function java_util_Stack_removeElementAt(handle receiver, int arg0) = @java:Method {
    name: "removeElementAt",
    'class: "java.util.Stack",
    paramTypes: ["int"]
} external;

function java_util_Stack_removeIf(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "removeIf",
    'class: "java.util.Stack",
    paramTypes: ["java.util.function.Predicate"]
} external;

function java_util_Stack_replaceAll(handle receiver, handle arg0) = @java:Method {
    name: "replaceAll",
    'class: "java.util.Stack",
    paramTypes: ["java.util.function.UnaryOperator"]
} external;

function java_util_Stack_retainAll(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "retainAll",
    'class: "java.util.Stack",
    paramTypes: ["java.util.Collection"]
} external;

function java_util_Stack_search(handle receiver, handle arg0) returns int = @java:Method {
    name: "search",
    'class: "java.util.Stack",
    paramTypes: ["java.lang.Object"]
} external;

function java_util_Stack_set(handle receiver, int arg0, handle arg1) returns handle = @java:Method {
    name: "set",
    'class: "java.util.Stack",
    paramTypes: ["int", "java.lang.Object"]
} external;

function java_util_Stack_setElementAt(handle receiver, handle arg0, int arg1) = @java:Method {
    name: "setElementAt",
    'class: "java.util.Stack",
    paramTypes: ["java.lang.Object", "int"]
} external;

function java_util_Stack_setSize(handle receiver, int arg0) = @java:Method {
    name: "setSize",
    'class: "java.util.Stack",
    paramTypes: ["int"]
} external;

function java_util_Stack_size(handle receiver) returns int = @java:Method {
    name: "size",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_sort(handle receiver, handle arg0) = @java:Method {
    name: "sort",
    'class: "java.util.Stack",
    paramTypes: ["java.util.Comparator"]
} external;

function java_util_Stack_spliterator(handle receiver) returns handle = @java:Method {
    name: "spliterator",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_stream(handle receiver) returns handle = @java:Method {
    name: "stream",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_subList(handle receiver, int arg0, int arg1) returns handle = @java:Method {
    name: "subList",
    'class: "java.util.Stack",
    paramTypes: ["int", "int"]
} external;

function java_util_Stack_toArray(handle receiver) returns handle = @java:Method {
    name: "toArray",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_toArray2(handle receiver, handle arg0) returns handle = @java:Method {
    name: "toArray",
    'class: "java.util.Stack",
    paramTypes: ["java.util.function.IntFunction"]
} external;

function java_util_Stack_toArray3(handle receiver, handle arg0) returns handle = @java:Method {
    name: "toArray",
    'class: "java.util.Stack",
    paramTypes: ["[Ljava.lang.Object;"]
} external;

function java_util_Stack_trimToSize(handle receiver) = @java:Method {
    name: "trimToSize",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.Stack",
    paramTypes: []
} external;

function java_util_Stack_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.Stack",
    paramTypes: ["long"]
} external;

function java_util_Stack_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "java.util.Stack",
    paramTypes: ["long", "int"]
} external;

function java_util_Stack_newStack1() returns handle = @java:Constructor {
    'class: "java.util.Stack",
    paramTypes: []
} external;

