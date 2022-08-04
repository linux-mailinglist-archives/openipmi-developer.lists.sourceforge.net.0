Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63951589E0B
	for <lists+openipmi-developer@lfdr.de>; Thu,  4 Aug 2022 17:01:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oJcM5-0008AP-Cy; Thu, 04 Aug 2022 15:01:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pmenzel@molgen.mpg.de>) id 1oJcM3-0008A5-C5
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Aug 2022 15:01:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WfDQO7aLrFG9NM9zkw4e7LhCjT7PPCqb1cPFKUOiiDo=; b=PAHGNoeaUD4h0iq11dAEc1tlfh
 KLNW3lmIjVAjvnDsivRVeRVchfLYvoUokqhu29KbSnvvtLjF3XduoIj8rDRgg1hUQddi/CSOZFcko
 LofVSxr1B6KDQ7MT28XP/iZHhA8SeRF7Yt5HpY4lBeUMOh/CbGLYilScIq/Y45lFhalw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WfDQO7aLrFG9NM9zkw4e7LhCjT7PPCqb1cPFKUOiiDo=; b=ibqr9v0C1Fvh2Wh/96UtGR3du6
 kvLAYeM5pTcPODCL4+4r11C9ZMVSdQ56yKMBBhOkdC0HGX2WXlv1TVYPFfoJD882vX2HR43WRcVSF
 tmG5a+KjOqy7OYOnq54qXjYXY5/9q9zwwAFAKoaRY40yVsgxf0XZUfqenu0zcqi95Yos=;
Received: from mx3.molgen.mpg.de ([141.14.17.11] helo=mx1.molgen.mpg.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oJcLv-003J5h-W5
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Aug 2022 15:01:41 +0000
Received: from [172.18.172.87] (unknown [46.183.103.8])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 0544D61EA1928;
 Thu,  4 Aug 2022 17:01:21 +0200 (CEST)
Message-ID: <6fef92f3-6932-5c20-57fe-9eb40d676013@molgen.mpg.de>
Date: Thu, 4 Aug 2022 17:01:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
To: Tomer Maimon <tmaimon77@gmail.com>
References: <20220804145516.217482-1-tmaimon77@gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220804145516.217482-1-tmaimon77@gmail.com>
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Tomer, Am 04.08.22 um 16:55 schrieb Tomer Maimon: > Add
 to npcm845 KCS compatible string a fallback to npcm750 KCS compatible >
 string.
 > > Signed-off-by: Tomer Maimon <tmaimon77@gmail.com> > --- > Documenta [...]
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [46.183.103.8 listed in zen.spamhaus.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.14.17.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oJcLv-003J5h-W5
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
Cc: devicetree@vger.kernel.org, benjaminfair@google.com, minyard@acm.org,
 avifishman70@gmail.com, venture@google.com, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, tali.perry1@gmail.com, yuenn@google.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 openipmi-developer@lists.sourceforge.net, jic23@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

RGVhciBUb21lciwKCgpBbSAwNC4wOC4yMiB1bSAxNjo1NSBzY2hyaWViIFRvbWVyIE1haW1vbjoK
PiBBZGQgdG8gbnBjbTg0NSBLQ1MgY29tcGF0aWJsZSBzdHJpbmcgYSBmYWxsYmFjayB0byBucGNt
NzUwIEtDUyBjb21wYXRpYmxlCj4gc3RyaW5nLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFRvbWVyIE1h
aW1vbiA8dG1haW1vbjc3QGdtYWlsLmNvbT4KPiAtLS0KPiAgIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9pcG1pL25wY203eHgta2NzLWJtYy50eHQgfCAyICstCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lwbWkvbnBjbTd4eC1rY3MtYm1jLnR4
dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pcG1pL25wY203eHgta2NzLWJt
Yy50eHQKPiBpbmRleCBjYmMxMGE2OGRkZWYuLjRmZGE3NmU2MzM5NiAxMDA2NDQKPiAtLS0gYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaXBtaS9ucGNtN3h4LWtjcy1ibWMudHh0
Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lwbWkvbnBjbTd4eC1r
Y3MtYm1jLnR4dAo+IEBAIC03LDcgKzcsNyBAQCB1c2VkIHRvIHBlcmZvcm0gaW4tYmFuZCBJUE1J
IGNvbW11bmljYXRpb24gd2l0aCB0aGVpciBob3N0Lgo+ICAgUmVxdWlyZWQgcHJvcGVydGllczoK
PiAgIC0gY29tcGF0aWJsZSA6IHNob3VsZCBiZSBvbmUgb2YKPiAgICAgICAibnV2b3RvbixucGNt
NzUwLWtjcy1ibWMiCj4gLSAgICAibnV2b3RvbixucGNtODQ1LWtjcy1ibWMiCj4gKyAgICAibnV2
b3RvbixucGNtODQ1LWtjcy1ibWMiLCAibnV2b3RvbixucGNtNzUwLWtjcy1ibWMiCgpJc27igJl0
IHRoZSBhZGRlZCBzdHJpbmcgZXhhY3RseSB0aGUgc2FtZSBhcyB0aGUgb25lIGJlbG93IHRoZSBj
b21wYXRpYmxlIApsaW5lPwoKPiAgIC0gaW50ZXJydXB0cyA6IGludGVycnVwdCBnZW5lcmF0ZWQg
YnkgdGhlIGNvbnRyb2xsZXIKPiAgIC0ga2NzX2NoYW4gOiBUaGUgS0NTIGNoYW5uZWwgbnVtYmVy
IGluIHRoZSBjb250cm9sbGVyCgoKS2luZCByZWdhcmRzLAoKUGF1bAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWls
aW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
