import 'package:json_annotation/json_annotation.dart';
import 'package:skreen/model/cardmodel/card_info.dart';

part 'card_data.g.dart';

@JsonSerializable()
class CardDataResponse {
  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'list', defaultValue: [])
  List<CardInfoResponse>? list;

  CardDataResponse({
    this.name,
    this.list,
  });

  factory CardDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CardDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CardDataResponseToJson(this);
}

//Dermatofibroma (df)
List related = [
  {
    'name': 'df',
    'list': [
      {
        "header": "Intradermal Naevi",
        "description":
            "Intradermal naevi are a form of melanocytic naevus. A melanocytic naevus (or 'mole') is a common benign skin lesion due to a local proliferation of pigment cells (melanocytes). A brown or black melanocytic naevus contains the pigment melanin, so may also be called a pigmented naevus.",
        "image": "assets/df1.jpg",
        "ref": "https://patient.info/doctor/intradermal-and-compound-naevi"
      },
      {
        "header": "Hypertrophic Scarring Keloids",
        "description":
            "Hypertrophic scars are contained within the site of injury and may regress over time, while keloids spread beyond the borders of the initial injury and do not regress. On histological examination, hypertrophic scars tend to have collagen in a wavy, regular pattern, whereas keloids have no distinct pattern of collagen. This activity reviews the evaluation and management of hypertrophic scars/keloids and highlights the role of the interprofessional team in the recognition and management of this condition.",
        "image": "assets/df2.jpg",
        "ref": "https://www.ncbi.nlm.nih.gov/books/NBK537058/"
      },
      {
        "header": "Keratoacanthoma",
        "description":
            "Keratoacanthomas (KAs) are very rapidly growing squamo-proliferative lesions that look like well-differentiated squamous cell carcinomas (SCCs) pathologically. Keratoacanthomas are characterised by rapid growth over a few weeks to months, followed by spontaneous resolution over 4-6 months in most cases.",
        "image": "assets/df3.jpg",
        "ref": "https://patient.info/doctor/keratoacanthoma-pro"
      },
      {
        "header": "Malignant Melanoma",
        "description":
            "Normal melanocytes are found in the basal layer of the epidermis. Melanocytes are found in equal numbers in black and in white skin; however, the melanocytes in black skin produce much more melanin. People with dark brown or black skin are very much less likely to be damaged by ultraviolet (UV) radiation than those with white skin. Non-cancerous growth of melanocytes results in moles (benign melanocytic naevi) and freckles (ephelides and lentigines).",
        "image": "assets/df4.jpg",
        "ref": "https://patient.info/doctor/malignant-melanoma-of-skin"
      },
      {
        "header": "Blue naevus",
        "description":
            "A melanocytic naevus (or 'mole') is a common benign skin lesion due to a local proliferation of pigment cells (melanocytes). A brown or black melanocytic naevus contains the pigment melanin, so may also be called a pigmented naevus. The blue naevus is a uniform structureless lesion, steel blue in colour.",
        "image": "assets/df5.jpg",
        "ref": "https://patient.info/doctor/blue-naevus"
      },
    ],
  },
  {
    'name': 'vasc',
    'list': [
      {
        "header": "Hemangiomas",
        "description":
            "Hemangiomas are the most common type of vascular lesion in children They are benign, or noncancerous, tumors of the cells that line blood vessels. They usually appear at or shortly after birth as faint areas of pinkish-red discoloration of the skin and then quickly undergo a period of rapid growth.",
        "image": "assets/vasc1.jpg",
        "ref":
            "https://www.ssmhealth.com/cardinal-glennon/pediatric-plastic-reconstructive-surgery/hemangiomas"
      },
      {
        "header": "Capillary Malformationst",
        "description":
            "Also known as port wine stains, capillary malformations (CM) are comprised of irregular capillaries and small veins running through the deeper layers of the skin. These low flow lesions appear at birth as flat pink areas of skin discoloration and usually darken over time to become a deep purple color. They can eventually develop changes in skin texture with a cobble-stone effect and can also be associated with overgrowth of the underlying bone and soft tissues.",
        "image": "assets/vasc2.jpg",
        "ref":
            "https://www.ssmhealth.com/cardinal-glennon/pediatric-plastic-reconstructive-surgery/hemangiomas"
      },
      {
        "header": "Venous Malformations",
        "description":
            "Venous malformations (VM) are the most common type of vascular malformation found in 1-4% of the population. They are low flow lesions made up of irregular collections of abnormal venous channels within the skin, soft tissue or even bone and vital organs. VMs are present at birth, but may not be apparent until they grow. They appear as soft bluish compressible masses without any pulsations that swell in the dependent position or with straining. These lesions can range in severity from barely noticeable to extensive lesions that cause significant cosmetic and functional problems due to the mass itself and associated overgrowth of the bones and soft tissue. Episodes of pain can occur when a blood clot called a phlebolith develops within the VM and causes blocked blood flow and inflammation. These areas can also become infected requiring antibiotics for treatment.",
        "image": "assets/vasc3.jpg",
        "ref":
            "https://www.ssmhealth.com/cardinal-glennon/pediatric-plastic-reconstructive-surgery/hemangiomas"
      },
    ],
  },
  {
    'name': 'akiec',
    'list': [
      {
        "header": "Blisters",
        "description":
            "A blister is a bubble on the skin containing fluid. Blisters are usually circular in shape. The fluid that forms underneath the skin can be bloody or clear.",
        "image": "assets/akiec1.jpg",
        "ref":
            "https://www.hopkinsmedicine.org/health/conditions-and-diseases/blisters"
      },
    ],
  },
  {
    'name': 'bcc',
    'list': [
      {
        "header": "Malignant Melanoma",
        "description":
            "Normal melanocytes are found in the basal layer of the epidermis. Melanocytes are found in equal numbers in black and in white skin; however, the melanocytes in black skin produce much more melanin. People with dark brown or black skin are very much less likely to be damaged by ultraviolet (UV) radiation than those with white skin. Non-cancerous growth of melanocytes results in moles (benign melanocytic naevi) and freckles (ephelides and lentigines).",
        "image": "assets/bkl1.jpg",
        "ref": ""
      },
    ],
  },
  {
    'name': 'bkl',
    'list': [
      {
        "header": "Malignant Melanoma",
        "description":
            "Normal melanocytes are found in the basal layer of the epidermis. Melanocytes are found in equal numbers in black and in white skin; however, the melanocytes in black skin produce much more melanin. People with dark brown or black skin are very much less likely to be damaged by ultraviolet (UV) radiation than those with white skin. Non-cancerous growth of melanocytes results in moles (benign melanocytic naevi) and freckles (ephelides and lentigines).",
        "image": "assets/bkl1.jpg",
        "ref": "https://patient.info/doctor/malignant-melanoma-of-skin"
      },
      {
        "header": "Lentigo maligna",
        "description":
            "Lentigo maligna (LM) is a slow-growing subtype of melanoma that often occurs on chronically sun-damaged skin, particularly the head and neck, in the elderly. Due to its clinical and histopathologic mimicry of benign lesions, it is often misdiagnosed for years or even decades, which can lead to increased morbidity and mortality. This activity summarizes the key findings of LM and discusses the unique diagnostic and treatment challenges of this disease.",
        "image": "assets/bkl2.jpg",
        "ref": "https://www.ncbi.nlm.nih.gov/books/NBK482163/"
      },
      {
        "header": "Squamous cell carcinoma",
        "description":
            "Squamous cell carcinoma (SCC) of the skin is the second most common form of skin cancer, characterized by abnormal, accelerated growth of squamous cells. When caught early, most SCCs are curable.",
        "image": "assets/bkl3.jpg",
        "ref":
            "https://www.skincancer.org/skin-cancer-information/squamous-cell-carcinoma/"
      },
    ],
  },
  {
    'name': 'mel',
    'list': [
      {
        "header": "Psoriasis",
        "description":
            "Psoriasis is a skin condition that is believed to be related to an immune system problem, which causes T cells to attack healthy skin cells by accident. This stimulates the production and life cycle of skin cells and causes cells to build up on the surface of the skin in a way that can often be mistaken for skin cancer. Symptoms of psoriasis include red patches of skin with silvery scales, small scaling spots, and dry cracked skin.",
        "image": "assets/mel1.jpg",
        "ref":
            "https://sundoctors.com.au/blog/top-5-conditions-often-mistaken-skin-cancer/"
      },
      {
        "header": "Seborrheic Keratoses (Benign tumour)",
        "description":
            "Seborrheic Keratoses is the most common benign tumour of the skin. While there are many theories, the exact cause is unknown, however, often it can look very similar to skin cancer and present itself as scaly, brown and greasy growths on the skin. Treatment of this growth is normally unnecessary but can be performed if it is pruritic, irritated or inflamed. If the dermatologist is unsure that it is a benign tumour they might also ask for a biopsy to test it.",
        "image": "assets/mel2.jpg",
        "ref":
            "https://sundoctors.com.au/blog/top-5-conditions-often-mistaken-skin-cancer/"
      },
      {
        "header": "Sebaceous hyperplasia",
        "description":
            "Sebaceous glands are small glands that grow near hair follicles, and function as a source of the oily, waxy matter that lubricates and waterproofs the skin and hair. When this gland becomes enlarged they can form into a small yellow or flesh coloured papules which can resemble basal cell carcinomas. For the most part these growths are not dangerous and are only removed for cosmetic purposes.",
        "image": "assets/mel3.jpg",
        "ref":
            "https://sundoctors.com.au/blog/top-5-conditions-often-mistaken-skin-cancer/"
      },
      {
        "header": "Nevus (mole)",
        "description":
            "Moles, also known as nevi, are one of the most common growths that people find on their skin. Growing mostly in early adulthood these are some of the growths most commonly mistaken for melanomas. Melanomas are often identified by being asymmetrical, having an irregular border, being unevenly coloured and being larger than 6mm. These signs however can also present themselves in atypical moles, which can be completely benign. Therefore, it is always important to check any new atypical mole with your dermatologist for accurate diagnosis.",
        "image": "assets/mel4.jpg",
        "ref":
            "https://sundoctors.com.au/blog/top-5-conditions-often-mistaken-skin-cancer/"
      },
      {
        "header": "Cherry angioma",
        "description":
            "Cherry angiomas are benign vascular growths that present themselves as bright cherry red bumps on the skin, normally growing on the trunk of the body. They usually appear on people over the age of 40 and are caused by overgrowth of blood vessels. While they can look like moles or even be mistaken for skin cancer they are completely benign and are only removed for cosmetic purposes.",
        "image": "assets/mel5.jpg",
        "ref":
            "https://sundoctors.com.au/blog/top-5-conditions-often-mistaken-skin-cancer/"
      },
    ],
  },
  {
    'name': 'nv',
    'list': [
      {
        "header": "Pathology of Benign Melanocytic Nevi",
        "description":
            "The term benign melanocytic nevus refers to a heterogeneous group of nonmalignant melanocytic nevi manifesting either as pigmented or nonpigmented cutaneous lesions.",
        "image": "assets/nv1.jpg",
        "ref": "https://emedicine.medscape.com/article/1962932-overview"
      },
      {
        "header": "Congenital Nevi",
        "description":
            "Congenital nevi are present at birth and result from a proliferation of benign melanocytes in the dermis, epidermis, or both (see the image below). Occasionally, nevi that are not present at birth but are histologically identical to congenital nevi may develop during the first 2 years of life. This is referred to as congenital nevus tardive.",
        "image": "assets/nv2.jpeg",
        "ref": "https://emedicine.medscape.com/article/1118659-overview"
      },
      {
        "header": "Speckled Lentiginous Nevus",
        "description":
            "Speckled lentiginous nevus is a patch of hyperpigmentation that can be seen on any area of the body. This patch contains a variable number of darkly pigmented macules and papules. Some authorities believe that speckled lentiginous nevus is a subtype of congenital melanocytic nevus.",
        "image": "assets/nv3.jpg",
        "ref": "https://emedicine.medscape.com/article/1061990-overview"
      },
      {
        "header": "Melanonychia",
        "description":
            "Melanonychia is brown or black pigmentation of the nail unit. Melanonychia commonly presents as pigmented band arranged lengthwise along the nail unit, and this presentation is known as longitudinal melanonychia or melanonychia striata. The most concerning cause of melanonychia is subungual melanoma, although a variety of other causes includes physiologic longitudinal melanonychia, systemic disorders, trauma, inflammatory disorders, fungal infections, drugs, and benign melanocytic hyperplasias.",
        "image": "assets/nv4.jpg",
        "ref": "https://emedicine.medscape.com/article/1375850-overview"
      },
    ],
  }
];

//Vascular lesions (vasc)


// Actinic keratoses (akiec)

// Basal cell carcinoma (bcc)


// Benign keratosis-like lesions (bkl)


// Melanoma (mel)
// Melanocytic nevi (nv)