Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC5976F77
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jul 2019 19:05:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hr3eU-0007qj-UQ; Fri, 26 Jul 2019 17:05:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <haiyue.wang@linux.intel.com>) id 1hr3eQ-0007qN-Kq
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Jul 2019 17:05:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z9tykkOZQ2Vk3USq8DlmLIa41Tnd8oBfuqoScMFVPnk=; b=hOh58spT4sL4wuDrjBcus2FLe7
 FdqM501FiOZBAmaYS059OB0JuadP0GH4mn4qJg30W2NNIeaTyt3Tn58UXrDpp6H4K4uGmSJC0KeW1
 8doAkH3pEtGOMy1u1mj7ayo1QLmus7OlQ5vbzaQI6+XoqklJAus4AZI3uHMgIaQPkcps=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z9tykkOZQ2Vk3USq8DlmLIa41Tnd8oBfuqoScMFVPnk=; b=cw5DpkpB8FSnFLaJuVYC96vODZ
 4gnKhOglCOB966EHpIRE75Nh1fIboB6zlzJ8zWWJT93iFq+4COg7NG6Ca/4qwrpVQYOdb+4bB9pWv
 IQ084DBhHBaRBtMvoVnd5GPdNP7dF9GPLkqxMuCIWXQhRvPBGUWklaP0rHqeMzEKmpb8=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hr3eN-0045d9-Jo
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Jul 2019 17:05:01 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 10:04:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="172279192"
Received: from haiyuewa-mobl.ccr.corp.intel.com (HELO [10.255.31.18])
 ([10.255.31.18])
 by fmsmga007.fm.intel.com with ESMTP; 26 Jul 2019 10:04:51 -0700
To: Andrew Jeffery <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org
References: <20190726053959.2003-1-andrew@aj.id.au>
 <20190726053959.2003-15-andrew@aj.id.au>
From: "Wang, Haiyue" <haiyue.wang@linux.intel.com>
Message-ID: <29a2d999-23bd-8e95-a1b8-f00e25a11df5@linux.intel.com>
Date: Sat, 27 Jul 2019 01:04:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726053959.2003-15-andrew@aj.id.au>
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hr3eN-0045d9-Jo
Subject: Re: [Openipmi-developer] [RFC PATCH 14/17] ipmi: kcs: Finish
 configuring ASPEED KCS device before enable
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Corey Minyard <minyard@acm.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

1NogMjAxOS0wNy0yNiAxMzozOSwgQW5kcmV3IEplZmZlcnkg0LS1wDoKPiBUaGUgY3VycmVudGx5
IGludGVycnVwdHMgYXJlIGNvbmZpZ3VyZWQgYWZ0ZXIgdGhlIGNoYW5uZWwgd2FzIGVuYWJsZWQu
Cj4KPiBDYzogSGFpeXVlIFdhbmc8aGFpeXVlLndhbmdAbGludXguaW50ZWwuY29tPgo+IENjOiBD
b3JleSBNaW55YXJkPG1pbnlhcmRAYWNtLm9yZz4KPiBDYzogQXJuZCBCZXJnbWFubjxhcm5kQGFy
bmRiLmRlPgo+IENjOiBHcmVnIEtyb2FoLUhhcnRtYW48Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5v
cmc+Cj4gQ2M6b3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+IFNpZ25l
ZC1vZmYtYnk6IEFuZHJldyBKZWZmZXJ5PGFuZHJld0Bhai5pZC5hdT4KPiAtLS0KPiAgIGRyaXZl
cnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVkLmMgfCA3ICsrKystLS0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9jaGFyL2lwbWkva2NzX2JtY19hc3BlZWQuYyBiL2RyaXZlcnMvY2hhci9pcG1pL2tjc19i
bWNfYXNwZWVkLmMKPiBpbmRleCAzYzk1NTk0NmU2NDcuLmUzZGQwOTAyMjU4OSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9rY3NfYm1jX2FzcGVlZC5jCj4gKysrIGIvZHJpdmVycy9j
aGFyL2lwbWkva2NzX2JtY19hc3BlZWQuYwo+IEBAIC0yNjgsMTMgKzI2OCwxNCBAQCBzdGF0aWMg
aW50IGFzcGVlZF9rY3NfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIAlr
Y3NfYm1jLT5pb19pbnB1dGIgPSBhc3BlZWRfa2NzX2luYjsKPiAgIAlrY3NfYm1jLT5pb19vdXRw
dXRiID0gYXNwZWVkX2tjc19vdXRiOwo+ICAgCj4gKwlyYyA9IGFzcGVlZF9rY3NfY29uZmlnX2ly
cShrY3NfYm1jLCBwZGV2KTsKPiArCWlmIChyYykKPiArCQlyZXR1cm4gcmM7Cj4gKwo+ICAgCWRl
dl9zZXRfZHJ2ZGF0YShkZXYsIGtjc19ibWMpOwoKClRoYW5rcyBmb3IgY2F0Y2hpbmcgdGhpcywg
Zm9yIG5vdCBtaXNzIHRoZSBkYXRhLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1p
LWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
