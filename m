Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B147589ED3
	for <lists+openipmi-developer@lfdr.de>; Thu,  4 Aug 2022 17:41:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oJcy7-0004TK-1d; Thu, 04 Aug 2022 15:41:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tmaimon77@gmail.com>) id 1oJcy5-0004TE-Ex
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Aug 2022 15:41:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1leJD2jYdoCH2YF7serqPkhW+3ZM8UEl9gxlKtZpBek=; b=IidtrUrjdFbm7QyN9ETDlXfjWR
 dWVwwNxtW9hXoAkRZoFZ8d1h5YJVh5O/KLffGVyMqi00fqZGGdZWzLT0AA9H5Eutes9BHOQoqrUuA
 7OMVKtrMPqk3nnsSngkmbAiBkv52xeptpPXvu6IhrHxVGx2qlADjrCqCJajKtJtRAMP0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1leJD2jYdoCH2YF7serqPkhW+3ZM8UEl9gxlKtZpBek=; b=JgNBz3NCYq9KYTZZLb/Zv6vK4d
 5D+WO0Fy5IdnOIkfOaN59N9ittY+3Z8dZJNfU+91BX1JOtkWqmrlL/PkC+65q+BKRrgzdRPjrrE+8
 ofal59T4u72IYiNqUbLX2ooJCSKyHET/Tz384g1tAudcJQjYph/4b/0UnRuS7ReQ0ppU=;
Received: from mail-lj1-f174.google.com ([209.85.208.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oJcy4-0005gU-E2
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Aug 2022 15:41:02 +0000
Received: by mail-lj1-f174.google.com with SMTP id v7so272972ljj.4
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 04 Aug 2022 08:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc;
 bh=1leJD2jYdoCH2YF7serqPkhW+3ZM8UEl9gxlKtZpBek=;
 b=laH6fB3jX1QrWTXtnY0qRiG3yiIKuZ4sSkr3yP8rxh1K2TGiHIorSIQj6pXgAPPmeB
 xjuQPlvW66l4ncnGmdARxcrcDDCuJip7fBWe/TENNYsO6wB8viV1yd7NePXWO7qdTqYx
 8MfNKUYe0peXYXpxBRzDrWsNShuAsTnMWECNSf1keJI2JPSIsOflFQGQKG9g3i7souQ4
 vlEEDBcYzkLA3n4eGouBn/EOQRxK7qHWWNwZIozIXzHZExLeIMgz7zNd/S4ay+07kWlX
 Jm52skrNW+E54wGgzw53RO8RayH5aAClCL5hZm0q1mY5SUz9ja90B+8TdmhYjukln66M
 ZsDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
 bh=1leJD2jYdoCH2YF7serqPkhW+3ZM8UEl9gxlKtZpBek=;
 b=H/QgMBDmIqJGuKc8TyqOe+dx9YkBD0BTorjA2End8zV3Femyr9wDfGiLd1wI/zdAqt
 GLkuHBEWYojA+0QjZi2EATOXA4yBo1GtVGvU2TbK8atCcsRhsgjlbG1GZSc12Ml4pov+
 i7oKFHofASM0u6ls4wlTB0L4RhNQDrMzxeIoNfxGWuq5/HjT2oDXJd75IYOPXLgq3hdx
 6lQf2x2PgkLkjmiqlCVovB+5FTj3i9dyHaHN6QZPVZaH/WhN1XCnnyu5Xp8Aek6A2KXj
 7vW+Y6Bow+OaCdt1k1lQDTIZ6T4CItAfpIlu5Yuu7+mNJEsqgeMzbg3Ql6XpyQnQ/FrC
 d01Q==
X-Gm-Message-State: ACgBeo2JDW94PiDogVMSo/bmeE70PL6ER+0n9MKOnh1YLBOaGvJaiqIj
 faah8kF4fX+iVKYuE0woPYkJeEpOZXBbelDjcbwQTWJEizrAag==
X-Google-Smtp-Source: AA6agR5RGzkugERz/4oeLaBfhq3ArqArrOJPuit3/LvK760dfD+laKr6a9iKinniQ0NQiCL5MKgOdQhbs91FsvnJysg=
X-Received: by 2002:a05:651c:2d0:b0:25e:6c94:59d5 with SMTP id
 f16-20020a05651c02d000b0025e6c9459d5mr810993ljo.488.1659627653867; Thu, 04
 Aug 2022 08:40:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220804145516.217482-1-tmaimon77@gmail.com>
 <6fef92f3-6932-5c20-57fe-9eb40d676013@molgen.mpg.de>
In-Reply-To: <6fef92f3-6932-5c20-57fe-9eb40d676013@molgen.mpg.de>
From: Tomer Maimon <tmaimon77@gmail.com>
Date: Thu, 4 Aug 2022 18:40:42 +0300
Message-ID: <CAP6Zq1hvDdDO3yA=rFAvKMg20EM6OuoiVnxOBMbrpB9oHaMbfw@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Paul, On Thu, 4 Aug 2022 at 18:01, Paul Menzel wrote: >
 > Dear Tomer, > > > Am 04.08.22 um 16:55 schrieb Tomer Maimon: > > Add to
 npcm845 KCS compatible string a fallback to npcm750 KCS compatible > > str
 [...] Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [tmaimon77[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmaimon77[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.174 listed in list.dnswl.org]
X-Headers-End: 1oJcy4-0005gU-E2
Subject: Re: [Openipmi-developer] [PATCH v1] dt-binding: ipmi: add fallback
 to npcm845 compatible
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: devicetree <devicetree@vger.kernel.org>,
 Benjamin Fair <benjaminfair@google.com>, minyard@acm.org,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>, Nancy Yuen <yuenn@google.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 openipmi-developer@lists.sourceforge.net, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgUGF1bCwKCk9uIFRodSwgNCBBdWcgMjAyMiBhdCAxODowMSwgUGF1bCBNZW56ZWwgPHBtZW56
ZWxAbW9sZ2VuLm1wZy5kZT4gd3JvdGU6Cj4KPiBEZWFyIFRvbWVyLAo+Cj4KPiBBbSAwNC4wOC4y
MiB1bSAxNjo1NSBzY2hyaWViIFRvbWVyIE1haW1vbjoKPiA+IEFkZCB0byBucGNtODQ1IEtDUyBj
b21wYXRpYmxlIHN0cmluZyBhIGZhbGxiYWNrIHRvIG5wY203NTAgS0NTIGNvbXBhdGlibGUKPiA+
IHN0cmluZy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBUb21lciBNYWltb24gPHRtYWltb243N0Bn
bWFpbC5jb20+Cj4gPiAtLS0KPiA+ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2lwbWkvbnBjbTd4eC1rY3MtYm1jLnR4dCB8IDIgKy0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pcG1pL25wY203eHgta2NzLWJtYy50eHQgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaXBtaS9ucGNtN3h4LWtjcy1ibWMudHh0Cj4g
PiBpbmRleCBjYmMxMGE2OGRkZWYuLjRmZGE3NmU2MzM5NiAxMDA2NDQKPiA+IC0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pcG1pL25wY203eHgta2NzLWJtYy50eHQKPiA+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pcG1pL25wY203eHgta2Nz
LWJtYy50eHQKPiA+IEBAIC03LDcgKzcsNyBAQCB1c2VkIHRvIHBlcmZvcm0gaW4tYmFuZCBJUE1J
IGNvbW11bmljYXRpb24gd2l0aCB0aGVpciBob3N0Lgo+ID4gICBSZXF1aXJlZCBwcm9wZXJ0aWVz
Ogo+ID4gICAtIGNvbXBhdGlibGUgOiBzaG91bGQgYmUgb25lIG9mCj4gPiAgICAgICAibnV2b3Rv
bixucGNtNzUwLWtjcy1ibWMiCj4gPiAtICAgICJudXZvdG9uLG5wY204NDUta2NzLWJtYyIKPiA+
ICsgICAgIm51dm90b24sbnBjbTg0NS1rY3MtYm1jIiwgIm51dm90b24sbnBjbTc1MC1rY3MtYm1j
Igo+Cj4gSXNu4oCZdCB0aGUgYWRkZWQgc3RyaW5nIGV4YWN0bHkgdGhlIHNhbWUgYXMgdGhlIG9u
ZSBiZWxvdyB0aGUgY29tcGF0aWJsZQo+IGxpbmU/Cml0IGlzIG5vdCB0aGUgc2FtZSwgaXQgZGVz
Y3JpYmVzIGEgZmFsbGJhY2sgdG8gTlBDTTdYWCBLQ1MgU2luY2UKTlBDTThYWCBLQ1MgYW5kIE5Q
Q003WFggS0NTIG1vZHVsZXMgYXJlIHNpbWlsYXIuCj4KPiA+ICAgLSBpbnRlcnJ1cHRzIDogaW50
ZXJydXB0IGdlbmVyYXRlZCBieSB0aGUgY29udHJvbGxlcgo+ID4gICAtIGtjc19jaGFuIDogVGhl
IEtDUyBjaGFubmVsIG51bWJlciBpbiB0aGUgY29udHJvbGxlcgo+Cj4KPiBLaW5kIHJlZ2FyZHMs
Cj4KPiBQYXVsCgpCZXN0IHJlZ2FyZHMsCgpUb21lcgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QK
T3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
