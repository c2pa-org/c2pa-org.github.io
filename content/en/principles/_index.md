---
title: "Guiding Principles"
featured_image: ""
---

# Guiding Principles for C2PA Designs and Specifications

These principles are intended to guide C2PA initiative-wide specifications and designs.

**IMPORTANT:** This document reflects our understanding of considerations for making _standards_ decisions with regard to the Coalition for Content Provenance and Authenticity (C2PA).

## Overarching Goals

C2PA specifications **SHOULD** provide a mechanism for the producers and custodians of any given content to assert, in a verifiable manner, any information they wish to disclose about the creation of that content and any actions taken since the asset's creation. We refer to such information collectively as _provenance._

C2PA specifications **SHOULD NOT** provide value judgments about whether a given set of provenance data is "good" or "bad," merely whether the assertions included within can be verified as associated with the underlying asset, correctly formed, and free from tampering.

## Expected Users

C2PA specifications **SHOULD** take into account and strike a reasonable balance for the needs of any individual or organization that uses content to make decisions.

While not intended to limit consideration of other interested parties, C2PA's users can be broadly understood as:

- **Content creators,** who wish to assert information about content they've produced in a way that can be trusted. Common examples include:

  - Creative professionals
  - Knowledge workers
  - Journalists and news media organizations
    - Including both professional and citizen journalists
    - Including those operating in high-risk environments
  - Human-rights defenders
  - Amateur producers of news media content

- **Content publishers,** who wish to have better information on which to make decisions about what content to trust. Common examples include:

  - News media organizations
  - Social media platforms
  - Content distribution networks

- **Content consumers,** who wish to understand the process by which the content was created. Common examples include:

  - Legal systems
  - Consumers of news media and social media sites

- **Vendors and implementors,** who wish to build software or hardware tools to create, persist, exchange, or consume C2PA provenance data in a way that is interoperable with other C2PA-enabled systems.

## Privacy

C2PA specifications **MUST** respect the common privacy concerns of each of the target users named earlier.

### Details

- C2PA specifications **MUST** allow for flexibility in whether C2PA data is stored directly in asset files or hosted in cloud-accessible storage.
- C2PA specifications **MUST** allow content creators, editors, and publishers to remove sensitive information before sharing with others. Subsequent participants must be made aware of such removal.
- C2PA specifications **MUST** allow certain information to be marked as not removable by C2PA-compliant tools. C2PA-compliant tools **MUST** refuse to validate any asset with a non-conforming removal.
- C2PA specifications **MUST NOT** rely on display-time filtering of content to achieve privacy. When use cases demand that authenticity data be removed, it should be permanently removed.
- C2PA specifications **MUST** allow for digital signatures to be created either on-device or on server, as fits the business and operating constraints of each implementor. Which option was chosen **SHOULD** be documented in any resulting data.
- C2PA specifications **MUST NOT** _require_ identity of the person or organization making any assertion or claim about an asset to be documented. The specifications **MAY** allow that information to be represented, provided that representation is optional.
- C2PA-aware tools **MUST** disclose the nature of information that will be captured, recorded, and/or stored on users' behalf and **MUST** obtain informed consent from their users before doing so. Such tools **SHOULD** aim to present this information in a manner that concisely and accurately reflects the tradeoffs the user is making.
- C2PA specifications **MUST** be compatible with varying points of view and legal requirements with regard to data sovereignty and custody from file-only to primarily in cloud.
- C2PA-aware tools **MUST** allow their users control over what identity, if any, is used when generating C2PA-compliant metadata.

## Global Audience / Accessibility

C2PA specifications **MUST** take into consideration the needs of interested users throughout the world.

### Details

- It **MUST** be possible to implement C2PA specifications on the computing platforms in widespread use in both developed and developing regions, specifically including lower-cost and older mobile devices.
- C2PA tool implementors **SHOULD** strive to communicate about C2PA-provided data in a way that maximizes comprehension across all levels of language and digital literacy.
- C2PA-aware tools, especially those for _content consumers,_ **SHOULD** conform to [Web Content Accessibility Guidelines](https://www.w3.org/TR/WCAG21/). This will make C2PA information accessible to a wide range of people with disabilities, including accommodations for blindness and low vision, deafness and hearing loss, limited movement, speech disabilities, photosensitivity, and combinations of these, and some accommodation for learning disabilities and cognitive limitations; but will not address every user need for people with these disabilities.
- C2PA-aware tools **SHOULD** be accessible to users with limited or high-cost access to Internet services.

## Interoperability

C2PA specifications **SHOULD** result in an ecosystem of tools for each of the above classes of target users which inter-operate successfully to maintain and display provenance information about assets.

### Details

- A piece of content encoded with one C2PA-compliant tool **MUST** be readable by another C2PA-complaint tool.

## Fit with Existing Workflows

C2PA specifications **MUST** fit into the existing workflows of each of the target users named earlier, typically through incremental additions to existing tools.

### Details

- C2PA specifications **MUST** support _all_ common asset and content file formats.
- C2PA specifications **SHOULD** build upon existing metadata standards (e.g. XMP) where feasible. C2PA specifications **MAY** take advantage of specific mechanisms available in specific formats (e.g. [ISO BMFF](https://www.w3.org/TR/mse-byte-stream-format-isobmff/)) when appropriate.
- C2PA specifications **SHOULD NOT** require specific asset management or hosting strategies.
- C2PA specifications **SHOULD** allow for workflows that include authoring/editing tools that are not C2PA-compliant. Such gaps in understanding **MUST** be detected and documented.

## Performance

C2PA specifications **SHOULD** avoid unreasonable performance characteristics for implementors.

### Details

- C2PA specifications **SHOULD** consider performance characteristics across a variety of platforms, specifically including IoT devices, camera hardware, low-cost mobile devices, and server platforms.
- C2PA specifications **SHOULD** consider performance and size characteristics across a variety of content types, specifically including still imagery, documents, video, and audio.

## Simplicity and Cost Burden

C2PA specifications **SHOULD** avoid unreasonable technical complexity and cost burden for implementors.

### Details

- C2PA specifications **MUST NOT** _require_ implementors to provide cloud hosting of C2PA data.
- C2PA specifications **SHOULD** _allow_ implementors to provide cloud hosting of C2PA data when the implementor feels it is appropriate.

## Extensibility

C2PA specifications **SHOULD** provide extensibility to allow for extension and evolution of authenticity data.

### Details

- C2PA specifications **SHOULD** describe a standard set of data that can be verifiably documented about an asset.
- C2PA specifications **SHOULD** allow for that standard set of data to evolve in a backward-compatible manner.
- C2PA specifications **SHOULD** allow for individual implementors to add vendor-specific information in a verifiably documented manner.
- C2PA specifications **MUST** describe the required "standard set of information about an asset" without the use of vendor-specific data types.

## Misuse

C2PA specifications **MUST** be reviewed with a critical eye toward potential abuse and misuse of the framework.

### Details

- C2PA specifications **MUST** be reviewed by security experts prior to public implementation.
- C2PA specifications **MUST** be reviewed for the ability to be abused and cause unintended harms, threats to human rights, or disproportionate risks to vulnerable groups globally.

## References

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in [BCP 14](https://tools.ietf.org/html/bcp14), [RFC2119](https://tools.ietf.org/html/rfc2119), and [RFC8174](https://tools.ietf.org/html/rfc8174) when, and only when, they appear in all capitals, as shown here.
