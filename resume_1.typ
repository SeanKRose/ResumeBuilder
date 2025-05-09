#import "/imprecv/cv.typ": *

// Load CV data from YAML
#let cvdata = yaml("resume_1.yml")

#let uservars = (
    headingfont: "Libertinus Serif", // Set font for headings
    bodyfont: "Libertinus Serif",   // Set font for body
    fontsize: 10pt, // 10pt, 11pt, 12pt
    linespacing: 8pt,
    sectionspacing: 10pt,
    showAddress: false, // true/false Show address in contact info
    showNumber: false,  // true/false Show phone number in contact info
    headingsmallcaps: false
)

// setrules and showrules can be overridden by re-declaring it here
// #let setrules(doc) = {
//      // Add custom document style rules here
//
//      doc
// }

#let customrules(doc) = {
    // Add custom document style rules here

    doc
}

#let cvinit(doc) = {
    doc = setrules(uservars, doc)
    doc = showrules(uservars, doc)
    doc = customrules(doc)

    doc
}

// Each section function can be overridden by re-declaring it here
// #let cveducation = []

// Content
#show: doc => cvinit(doc)

#cvheading(cvdata, uservars)

#cveducation(cvdata)
#cvwork(cvdata)
// #cvaffiliations(cvdata)
// #cvprojects(cvdata)
#cvawards(cvdata)
// #cvcertificates(cvdata)
#cvpublications(cvdata)
#cvskills(cvdata)
// #cvreferences(cvdata)

#endnote
