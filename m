Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7665D9553
	for <lists+openipmi-developer@lfdr.de>; Wed, 16 Oct 2019 17:18:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iKl4M-0002fU-Q2; Wed, 16 Oct 2019 15:18:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <clg@kaod.org>) id 1iKl4M-0002fL-6w
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Oct 2019 15:18:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dtSYos6QRQLZ85lLb2LR9NuLV/VGCKZkRtrQC/3HbbQ=; b=a7oGtGXSSNpbpzUjsh2fxsC4OJ
 7SRwxCqtXiC6V0Gg1jLsE2XtMPFhxRBAhTsfl9hllBTM1rECSnOcqc6bOywVz6WGhsfdO18u1ueOn
 CVv9tDEyOGJhfnLyOmauJ3OHvgXo255SmMClzrRJYTjmwuJMmtTJIAt8MMqbHw8z7yGY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dtSYos6QRQLZ85lLb2LR9NuLV/VGCKZkRtrQC/3HbbQ=; b=mi0xygrz3DWtYjTdiVuIFA2iBh
 n9dFu5G1nOW9AdsHRie2RyuM4HGMvHcc5FnREXghBUg9mBjTNaoDMbTVjpW4Rn+T54M0W3c9nonTz
 U7UwUjcXEFWa+7oxwTRvS/4IlpE3bokrxKgv/d3b3J5Leb2RJoXFfUi841W2Mp1YJCNw=;
Received: from 8.mo68.mail-out.ovh.net ([46.105.74.219])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iKl4I-0041T3-8O
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Oct 2019 15:18:34 +0000
Received: from player698.ha.ovh.net (unknown [10.109.160.226])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 1E26E146D17
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 16 Oct 2019 16:41:18 +0200 (CEST)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player698.ha.ovh.net (Postfix) with ESMTPSA id CCEE9B08ECE7;
 Wed, 16 Oct 2019 14:41:08 +0000 (UTC)
To: minyard@acm.org, YueHaibing <yuehaibing@huawei.com>
References: <20191016092131.23096-1-yuehaibing@huawei.com>
 <20191016141936.GN14232@t560>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Message-ID: <789af3ff-9ed8-5869-05c4-9cfb2ac5e9d5@kaod.org>
Date: Wed, 16 Oct 2019 16:41:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191016141936.GN14232@t560>
Content-Language: en-US
X-Ovh-Tracer-Id: 3174193315413003016
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrjeehgdekvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [46.105.74.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iKl4I-0041T3-8O
Subject: Re: [Openipmi-developer] [PATCH -next] ipmi: bt-bmc: use
 devm_platform_ioremap_resource() to simplify code
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de,
 Alistair Popple <alistair@popple.id.au>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gMTYvMTAvMjAxOSAxNjoxOSwgQ29yZXkgTWlueWFyZCB3cm90ZToKPiBPbiBXZWQsIE9jdCAx
NiwgMjAxOSBhdCAwNToyMTozMVBNICswODAwLCBZdWVIYWliaW5nIHdyb3RlOgo+PiBVc2UgZGV2
bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKCkgdG8gc2ltcGxpZnkgdGhlIGNvZGUgYSBiaXQu
Cj4+IFRoaXMgaXMgZGV0ZWN0ZWQgYnkgY29jY2luZWxsZS4KPiAKPiBBZGRpbmcgdGhlIG1vZHVs
ZSBhdXRob3IgYW5kIG90aGVycy4gSSBjYW4ndCBzZWUgYSByZWFzb24gdG8gbm90IGRvCj4gdGhp
cy4KCnllcy4gTG9va3MgZ29vZCB0byBtZS4KClJldmlld2VkLWJ5OiBDw6lkcmljIExlIEdvYXRl
ciA8Y2xnQGthb2Qub3JnPgoKVGhhbmtzLAoKQy4KCj4gLWNvcmV5Cj4gCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdAaHVhd2VpLmNvbT4KPj4gLS0tCj4+ICBkcml2
ZXJzL2NoYXIvaXBtaS9idC1ibWMuYyB8IDQgKy0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFy
L2lwbWkvYnQtYm1jLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9idC1ibWMuYwo+PiBpbmRleCA0MGI5
OTI3Li5kMzZhZWFjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9idC1ibWMuYwo+
PiArKysgYi9kcml2ZXJzL2NoYXIvaXBtaS9idC1ibWMuYwo+PiBAQCAtNDQ0LDE1ICs0NDQsMTMg
QEAgc3RhdGljIGludCBidF9ibWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
Pj4gIAo+PiAgCWJ0X2JtYy0+bWFwID0gc3lzY29uX25vZGVfdG9fcmVnbWFwKHBkZXYtPmRldi5w
YXJlbnQtPm9mX25vZGUpOwo+PiAgCWlmIChJU19FUlIoYnRfYm1jLT5tYXApKSB7Cj4+IC0JCXN0
cnVjdCByZXNvdXJjZSAqcmVzOwo+PiAgCQl2b2lkIF9faW9tZW0gKmJhc2U7Cj4+ICAKPj4gIAkJ
LyoKPj4gIAkJICogQXNzdW1lIGl0J3Mgbm90IHRoZSBNRkQtYmFzZWQgZGV2aWNldHJlZSBkZXNj
cmlwdGlvbiwgaW4KPj4gIAkJICogd2hpY2ggY2FzZSBnZW5lcmF0ZSBhIHJlZ21hcCBvdXJzZWx2
ZXMKPj4gIAkJICovCj4+IC0JCXJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JF
U09VUkNFX01FTSwgMCk7Cj4+IC0JCWJhc2UgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoJnBkZXYt
PmRldiwgcmVzKTsKPj4gKwkJYmFzZSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShw
ZGV2LCAwKTsKPj4gIAkJaWYgKElTX0VSUihiYXNlKSkKPj4gIAkJCXJldHVybiBQVFJfRVJSKGJh
c2UpOwo+PiAgCj4+IC0tIAo+PiAyLjcuNAo+Pgo+PgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0
Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
