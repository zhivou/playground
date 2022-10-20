class User {
    constructor(firstName, lastName) {
        this._firstName = firstName;
        this.lastName = lastName;
    }

    printFullName() {
        console.log(`My Full name is: ${this.firstName} ${this.lastName}`)
    }

    get firstName() {
        return this._firstName
    }

    set firstName(name) {
        if (name == 'Overset') {
            console.error("Wrong Name")
            return
        }
        this._firstName = name
    }
}

class Admin extends User {
    accessLevel() {
        console.log(":admin")
        return this
    }
}

class Patient extends User {
    accessLevel() {
        console.log(":patinet")
        return this
    }
}

p = new Patient("Patient", "Name")
p.firstName = "Overset"
console.log(p.firstName)