Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E41B376FD1
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jul 2019 19:24:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hr3xg-0000DS-LH; Fri, 26 Jul 2019 17:24:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <haiyue.wang@linux.intel.com>) id 1hr3xf-0000DD-9C
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Jul 2019 17:24:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TZIXcv1NIdZojcSRJOjr2GLNs8sdOIY3CMi3NZ3YJWE=; b=Gj07YYyKm6R1YVEKMQbCfGA1O1
 NcE3ymFXyL9qyKwmf5sUvevb4K1CixzilXexOt3ljIp93f8gkQy9bQRr3+BGfRmhmXH4G6JtFOUzW
 Jt1GuDFKAZfYNBRGh+FcPPRWbnvBFWXRqRkKAi51eUiA7A/0Lg+oOIAC02+UkbVgNFFM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TZIXcv1NIdZojcSRJOjr2GLNs8sdOIY3CMi3NZ3YJWE=; b=M34AN4XJ+dEtc7QNP/usFy4aob
 z8PYod8mRi8EIY6PJzFb4+ccGuT2K1lXnnVCOD8HhQwXw0FARZk/TykFwVgOK8nQhNS9ccheYq4s0
 ixIceQXSF6avb5/zvQsrNOJ/lnZKBZS1AbUJUBbfMe9tOq1+JNipBe0+ukrKpSLdJTHU=;
Received: from mga02.intel.com ([134.134.136.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hr3xb-004771-OP
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Jul 2019 17:24:55 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 10:24:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="369603426"
Received: from haiyuewa-mobl.ccr.corp.intel.com (HELO [10.255.31.18])
 ([10.255.31.18])
 by fmsmga005.fm.intel.com with ESMTP; 26 Jul 2019 10:24:43 -0700
From: "Wang, Haiyue" <haiyue.wang@linux.intel.com>
To: Andrew Jeffery <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org
References: <20190726053959.2003-1-andrew@aj.id.au>
 <20190726053959.2003-15-andrew@aj.id.au>
 <29a2d999-23bd-8e95-a1b8-f00e25a11df5@linux.intel.com>
Message-ID: <b4d60d12-0a1f-906a-1f3a-da0cfdd06be3@linux.intel.com>
Date: Sat, 27 Jul 2019 01:24:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <29a2d999-23bd-8e95-a1b8-f00e25a11df5@linux.intel.com>
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
X-Headers-End: 1hr3xb-004771-OP
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

CuWcqCAyMDE5LTA3LTI3IDAxOjA0LCBXYW5nLCBIYWl5dWUg5YaZ6YGTOgo+IOWcqCAyMDE5LTA3
LTI2IDEzOjM5LCBBbmRyZXcgSmVmZmVyeSDlhpnpgZM6Cj4+IFRoZSBjdXJyZW50bHkgaW50ZXJy
dXB0cyBhcmUgY29uZmlndXJlZCBhZnRlciB0aGUgY2hhbm5lbCB3YXMgZW5hYmxlZC4KPj4KPj4g
Q2M6IEhhaXl1ZSBXYW5nPGhhaXl1ZS53YW5nQGxpbnV4LmludGVsLmNvbT4KPj4gQ2M6IENvcmV5
IE1pbnlhcmQ8bWlueWFyZEBhY20ub3JnPgo+PiBDYzogQXJuZCBCZXJnbWFubjxhcm5kQGFybmRi
LmRlPgo+PiBDYzogR3JlZyBLcm9haC1IYXJ0bWFuPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3Jn
Pgo+PiBDYzpvcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4+IFNpZ25l
ZC1vZmYtYnk6IEFuZHJldyBKZWZmZXJ5PGFuZHJld0Bhai5pZC5hdT4KPj4gLS0tCj4+IMKgIGRy
aXZlcnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVkLmMgfCA3ICsrKystLS0KPj4gwqAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVkLmMgCj4+IGIvZHJpdmVycy9jaGFy
L2lwbWkva2NzX2JtY19hc3BlZWQuYwo+PiBpbmRleCAzYzk1NTk0NmU2NDcuLmUzZGQwOTAyMjU4
OSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkva2NzX2JtY19hc3BlZWQuYwo+PiAr
KysgYi9kcml2ZXJzL2NoYXIvaXBtaS9rY3NfYm1jX2FzcGVlZC5jCj4+IEBAIC0yNjgsMTMgKzI2
OCwxNCBAQCBzdGF0aWMgaW50IGFzcGVlZF9rY3NfcHJvYmUoc3RydWN0IAo+PiBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4+IMKgwqDCoMKgwqAga2NzX2JtYy0+aW9faW5wdXRiID0gYXNwZWVkX2tj
c19pbmI7Cj4+IMKgwqDCoMKgwqAga2NzX2JtYy0+aW9fb3V0cHV0YiA9IGFzcGVlZF9rY3Nfb3V0
YjsKPj4gwqAgK8KgwqDCoCByYyA9IGFzcGVlZF9rY3NfY29uZmlnX2lycShrY3NfYm1jLCBwZGV2
KTsKPj4gK8KgwqDCoCBpZiAocmMpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmM7Cj4+ICsK
Pj4gwqDCoMKgwqDCoCBkZXZfc2V0X2RydmRhdGEoZGV2LCBrY3NfYm1jKTsKPgo+Cj4gVGhhbmtz
IGZvciBjYXRjaGluZyB0aGlzLCBmb3Igbm90IG1pc3MgdGhlIGRhdGEuCj4KUmV2aWV3ZWQtYnk6
IEhhaXl1ZSBXYW5nIDxoYWl5dWUud2FuZ0BsaW51eC5pbnRlbC5jb20+CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Bl
cgo=
