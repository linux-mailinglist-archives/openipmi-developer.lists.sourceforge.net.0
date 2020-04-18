Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC3B1AE951
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 Apr 2020 04:15:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jPd0U-0004Pf-5i; Sat, 18 Apr 2020 02:14:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jPd0S-0004PU-AS
 for openipmi-developer@lists.sourceforge.net; Sat, 18 Apr 2020 02:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=umk7gi6BmXUnjeGcg+cvTgVz8SwIa0aokBJtfxL9v1M=; b=IiozyW4oOjcL7/CTsc6FEY2GG2
 WTdfa5jvdSz7suvMttz1Mq5W3NwF765PMD3vuyY0J3ue0gCjBq1vgVmQXmoX32TSLSV9OWY+rQ7E3
 AH2qX9qPbYvyU0fBrNp9S4PSvyYT/CMW4T0bUHGkKrdXyNtbs2dY+g2mlPaYifuASk58=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=umk7gi6BmXUnjeGcg+cvTgVz8SwIa0aokBJtfxL9v1M=; b=GhgLTsCi6VuW+6Z8U0zxp5JnsB
 5cz3fm6G/uURXzT6kOzER3Sey8Q3ErWTf3u8oTFkHwc8FTktduZ1uzHIkRdOI6vm+t9GGjAdNjahK
 EvZIOW8IPZnPswiUMfVnR2OFUthqyUlTkUhGyF7Yy6kziEjkZEN5S3t9zb6LbVAhOv78=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jPd0M-002Cnk-S6
 for openipmi-developer@lists.sourceforge.net; Sat, 18 Apr 2020 02:14:56 +0000
Received: by mail-oi1-f193.google.com with SMTP id r25so3835806oij.4
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 17 Apr 2020 19:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=umk7gi6BmXUnjeGcg+cvTgVz8SwIa0aokBJtfxL9v1M=;
 b=EQeoZIad3jcvCKEn+qVHBBxOu++l8jW4e8ceH1uK1iCLIq78XMm0bPJfEY+1AZMcCX
 Sk0Phv0mr1NoARtM6HYnryJoDOfe4VS47hsM0Qk+mjUisobW5J0pFRbISFntPIh9qvmE
 xV/r7GFrAVKnB/kBLUzndjrZtT6X93zLCfIKxDVWZf0WuV+KlXjpDcBM+Oz9lIJbofvc
 BFeNuRRP0pte0tDzEHYD7oIxTW4ixjbY48hx0VWHOCM5/42e/jD2+6pRwaqxmiw3qGAM
 qUmP5IRdDACLNPAFkSr7Pb9nkSLhztyOck2Cxwyaf9Zl8hRrD6vSFVbE0blabqQNGhK3
 5kEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=umk7gi6BmXUnjeGcg+cvTgVz8SwIa0aokBJtfxL9v1M=;
 b=hh5+LD95qblfjxI7rBUWVe0Gyvc3o7YMXzl+5mmhuPKfRCjEkZypB0v2Rrx10RuOFV
 ZJlRcolNK9XdUUp5MknMXjAxGMrDCphHaErG8HGWJyw55zFhzLZKInf0ELK1yq8nk4zu
 V3ZDVuxcobiNbdbZJjHeVmBqPoD1kvHtzN8eQ7KwC/dEuCyGF1n+oz0Hdtnsix+F03+x
 WcRasJfGED+FxXhaBJ1hb8LbPCidld6GttODV9jaftm3ihIYW1ZX1toszygnziKmSNuT
 2hIQy0Y0AoIT6tv5C97Tv/hIG+dE0IDwjWvWJLTduWWtgIs/mKToX7G/9tOWm9cqFp0x
 3iAQ==
X-Gm-Message-State: AGi0PuYmq6INbaeuvq5VfhicQYqX+W01LqVsCR1cm2ffqM8miEaNW/+p
 eVWhVsVqrzi63ItT1DTJxQ==
X-Google-Smtp-Source: APiQypJ7RSnwBJHE/SOlo0G7WfCYgILarclXrI1zHvgWV3ZckKBwYy2nOTYyRVvseRkdBr4DuXtTnw==
X-Received: by 2002:a05:6808:3d5:: with SMTP id
 o21mr316400oie.40.1587176084776; 
 Fri, 17 Apr 2020 19:14:44 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id x88sm8377641ota.44.2020.04.17.19.14.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 19:14:43 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id A72E5181888;
 Sat, 18 Apr 2020 02:14:42 +0000 (UTC)
Date: Fri, 17 Apr 2020 21:14:41 -0500
From: Corey Minyard <minyard@acm.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <20200418021441.GC6246@minyard.net>
References: <20200414141423.4968-1-tangbin@cmss.chinamobile.com>
 <20200414201832.GJ3587@minyard.net>
 <f5a848ae-d19f-5ab6-7c7d-2d0811fc174b@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5a848ae-d19f-5ab6-7c7d-2d0811fc174b@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chinamobile.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jPd0M-002Cnk-S6
Subject: Re: [Openipmi-developer] [PATCH 3/3] ipmi:bt-bmc: Fix error
 handling and status check
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
Reply-To: minyard@acm.org
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gV2VkLCBBcHIgMTUsIDIwMjAgYXQgMTA6MTQ6MDZBTSArMDgwMCwgVGFuZyBCaW4gd3JvdGU6
Cj4gSGkgQ29yZXk6Cj4gCj4gT24gMjAyMC80LzE1IDQ6MTgsIENvcmV5IE1pbnlhcmQgd3JvdGU6
Cj4gPiBPbiBUdWUsIEFwciAxNCwgMjAyMCBhdCAxMDoxNDoyNFBNICswODAwLCBUYW5nIEJpbiB3
cm90ZToKPiA+ID4gSWYgdGhlIGZ1bmN0aW9uIHBsYXRmb3JtX2dldF9pcnEoKSBmYWlsZWQsIHRo
ZSBuZWdhdGl2ZQo+ID4gPiB2YWx1ZSByZXR1cm5lZCB3aWxsIG5vdCBiZSBkZXRlY3RlZCBoZXJl
LiBTbyBmaXggZXJyb3IKPiA+ID4gaGFuZGxpbmcgaW4gYnRfYm1jX2NvbmZpZ19pcnEoKS4gQW5k
IGlmIGRldm1fcmVxdWVzdF9pcnEoKQo+ID4gPiBmYWlsZWQsICdidF9ibWMtPmlycScgaXMgYXNz
aWduZWQgdG8gemVybyBtYXliZSByZWR1bmRhbnQsCj4gPiA+IGl0IG1heSBiZSBtb3JlIHN1aXRh
YmxlIGZvciB1c2luZyB0aGUgY29ycmVjdCBuZWdhdGl2ZSB2YWx1ZXMKPiA+ID4gdG8gbWFrZSB0
aGUgc3RhdHVzIGNoZWNrIGluIHRoZSBmdW5jdGlvbiBidF9ibWNfcmVtb3ZlKCkuCj4gPiBDb21t
ZW50cyBpbmxpbmUuLgo+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFRhbmcgQmluIDx0YW5nYmlu
QGNtc3MuY2hpbmFtb2JpbGUuY29tPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTaGVuZ2p1IFpoYW5n
IDx6aGFuZ3NoZW5nanVAY21zcy5jaGluYW1vYmlsZS5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgIGRy
aXZlcnMvY2hhci9pcG1pL2J0LWJtYy5jIHwgMTIgKysrKystLS0tLS0tCj4gPiA+ICAgMSBmaWxl
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9idC1ibWMuYyBiL2RyaXZlcnMvY2hhci9pcG1p
L2J0LWJtYy5jCj4gPiA+IGluZGV4IDFkNGJmNWM2NS4uMTc0MGM2ZGM4IDEwMDY0NAo+ID4gPiAt
LS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9idC1ibWMuYwo+ID4gPiArKysgYi9kcml2ZXJzL2NoYXIv
aXBtaS9idC1ibWMuYwo+ID4gPiBAQCAtMzk5LDE2ICszOTksMTQgQEAgc3RhdGljIGludCBidF9i
bWNfY29uZmlnX2lycShzdHJ1Y3QgYnRfYm1jICpidF9ibWMsCj4gPiA+ICAgCXN0cnVjdCBkZXZp
Y2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gPiA+ICAgCWludCByYzsKPiA+ID4gLQlidF9ibWMtPmly
cSA9IHBsYXRmb3JtX2dldF9pcnEocGRldiwgMCk7Cj4gPiA+IC0JaWYgKCFidF9ibWMtPmlycSkK
PiA+ID4gLQkJcmV0dXJuIC1FTk9ERVY7Cj4gPiA+ICsJYnRfYm1jLT5pcnEgPSBwbGF0Zm9ybV9n
ZXRfaXJxX29wdGlvbmFsKHBkZXYsIDApOwo+ID4gPiArCWlmIChidF9ibWMtPmlycSA8IDApCj4g
PiA+ICsJCXJldHVybiBidF9ibWMtPmlycTsKPiBGb3IgdXMsIHRoaXMgcGFydCBvZiBtb2RpZmlj
YXRpb24gaGF2ZSByZWFjaGVkIGEgY29uc2Vuc3VzLgo+ID4gPiAgIAlyYyA9IGRldm1fcmVxdWVz
dF9pcnEoZGV2LCBidF9ibWMtPmlycSwgYnRfYm1jX2lycSwgSVJRRl9TSEFSRUQsCj4gPiA+ICAg
CQkJICAgICAgREVWSUNFX05BTUUsIGJ0X2JtYyk7Cj4gPiA+IC0JaWYgKHJjIDwgMCkgewo+ID4g
PiAtCQlidF9ibWMtPmlycSA9IDA7Cj4gPiA+ICsJaWYgKHJjIDwgMCkKPiA+ID4gICAJCXJldHVy
biByYzsKPiA+IEkgZG9uJ3QgdGhpbmsgdGhpcyBwYXJ0IGlzIGNvcnJlY3QuICBZb3Ugd2lsbCB3
YW50IHRvIHNldCBidF9ibWMtPmlycSB0bwo+ID4gcmMgaGVyZSB0byBtYXRjaCB3aGF0IGlzIGRv
bmUgZWxzZXdoZXJlIHNvIGl0J3MgdGhlIGVycm9yIGlmIG5lZ2F0aXZlLgo+IAo+IE5vbm9ubywg
SSBkb24ndCB3YW50IHRvIHNldCBidF9ibWMtPmlycSB0byByYywgSSB0aGluayB0aGV5IGFyZSBp
cnJlbGV2YW50Lgo+IAo+IFRoZSBsb2dpYyBvZiB0aGUgcHJldmlvdXMgY29kZSB3aWxsIGNvbnRp
bnVlIHRvIGV4ZWN1dGUgZXZlbiBpZgo+IHBsYXRmb3JtX2dldF9pcnEoKSBmYWlsZWQsd2hpY2gg
d2lsbCBiZSBicm91Z2h0IGRldm1fcmVxdWVzdF9pcnEoKSBmYWlsZWQKPiB0b28uICJidF9ibWMt
PmlycSA9IDAiIGhlcmUgaXMganVzdCBmb3IgYnRfYm1jX3JlbW92ZSgpIHRvIGV4ZWN1dGUKPiBk
ZWxfdGltZXJfc3luYygpLiBPdGhlcndpc2UgdGhlIGZ1bmN0aW9uIGRlbF90aW1lcl9zeW5jKCkg
d2lsbCBub3QgZXhlY3V0ZQo+IGlmIG5vdCBzZXQgImJ0X2JtYy0+aXJxIiB0byB6ZXJvLCBiZWNh
dXNlIGl0J3MgbmVnYXRpdmUgYWN0dWFsbHkuCgpTb3JyeSBmb3IgdGhlIGRlbGF5LCBJIGhhdmUg
aGFkIGEgbG90IG9mIGRpc3RyYWN0aW9ucy4KClRoZSB0cm91YmxlIGlzIHRoYXQgdGhlIGhhbmRs
aW5nIG9mIGJ0X2JtYy0+aXJxIG5lZWRzIHRvIGJlIGNvbnNpc3RlbnQuCkVpdGhlciBpdCBuZWVk
cyB0byBiZSBuZWdhdGl2ZSBpZiB0aGUgaXJxIGFsbG9jYXRpb24gZmFpbHMsIG9yIGl0IG5lZWRz
CnRvIGJlIHplcm8gaWYgdGhlIGlycSBhbGxvY2F0aW9uIGZhaWxzLiAgSSB0aGluayBpdCBuZWVk
cyB0byBiZSBuZWdhdGl2ZQpiZWNhdXNlIHplcm8gaXMgYSB2YWxpZCBpbnRlcnJ1cHQgaW4gc29t
ZSBjYXNlcy4KCkNvbnNpZGVyIHRoZSBmb2xsb3dpbmcgY29kZToKCiAgICAgICBidF9ibWNfY29u
ZmlnX2lycShidF9ibWMsIHBkZXYpOwoKICAgICAgICBpZiAoYnRfYm1jLT5pcnEpIHsKICAgICAg
ICAgICAgICAgIGRldl9pbmZvKGRldiwgIlVzaW5nIElSUSAlZFxuIiwgYnRfYm1jLT5pcnEpOwog
ICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgICAgICBkZXZfaW5mbyhkZXYsICJObyBJUlE7IHVz
aW5nIHRpbWVyXG4iKTsKICAgICAgICAgICAgICAgIHRpbWVyX3NldHVwKCZidF9ibWMtPnBvbGxf
dGltZXIsIHBvbGxfdGltZXIsIDApOwoKSWYgYnRfYm1jLT5pcnEgaXMgbmVnYXRpdmUgKGlmIHBs
YXRmb3JtX2dldF9pcnFfb3B0aW9uYWwoKSBmYWlscyksIGl0CndpbGwgc2F5IGl0J3MgdXNpbmcg
dGhlIGlycSBhbmQgd29uJ3Qgc3RhcnQgYSB0aW1lciBhbmQgdGhlIGRyaXZlciB3b24ndAp3b3Jr
LiAgVGhlbiBsYXRlciAoaW4geW91ciBjaGFuZ2UgYmVsb3cpIGl0IHdpbGwgdHJ5IHRvIHN0b3Ag
dGhlIHRpbWVyCmV2ZW4gdGhvdWdoIGl0J3Mgbm90IHJ1bm5pbmcuCgpJZiBkZXZtX3JlcXVlc3Rf
aXJxKCkgZmFpbHMsIHRoZW4gdGhlIGludGVycnVwdCBpcyBub3Qgc2V0LCBidXQgc2luY2UKYnRf
Ym1jLT5pcnEgaXMgbW9zdCBsaWtlbHkgbm90IHplcm8sIGl0IHdpbGwgbm90IHN0YXJ0IHRoZSB0
aW1lciBhbmQgdGhlCmRyaXZlciB3b24ndCB3b3JrLgoKWW91IHJlYWxseSBuZWVkIHRvIHNldCBi
dF9ibWMtPmlycSBuZWdhdGl2ZSBpZiBpdCBmYWlscy4gIEFuZCBmaXggdGhlCmNoZWNrIGFib3Zl
IHRvIGJlIGlmIChidF9ibWMtPmlycSA+PSAwKS4KCi1jb3JleQoKPiAKPiAKPiA+IAo+ID4gQWxz
bywgSSBiZWxpZXZlIHRoaXMgZnVuY3Rpb24gc2hvdWxkIG5vIGxvbmdlciByZXR1cm4gYW4gZXJy
b3IuICBJdAo+ID4gc2hvdWxkIGp1c3Qgc2V0IHRoZSBpcnEgdG8gdGhlIGVycm9yIGlmIG9uZSBo
YXBwZW5zLiAgVGhlIGRyaXZlciBuZWVkcwo+ID4gdG8gY29udGludWUgdG8gb3BlcmF0ZSBldmVu
IGlmIGl0IGNhbid0IGdldCBpdHMgaW50ZXJydXB0Lgo+ID4gCj4gPiBUaGUgcmVzdCBvZiB0aGUg
Y2hhbmdlcyBhcmUgY29ycmVjdCwgSSBiZWxpZXZlLgo+ID4gCj4gPiAKPiA+ID4gLQl9Cj4gPiA+
ICAgCS8qCj4gPiA+ICAgCSAqIENvbmZpZ3VyZSBJUlFzIG9uIHRoZSBibWMgY2xlYXJpbmcgdGhl
IEgyQiBhbmQgSEJVU1kgYml0czsKPiA+ID4gQEAgLTQ5OSw3ICs0OTcsNyBAQCBzdGF0aWMgaW50
IGJ0X2JtY19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4gICAJc3Ry
dWN0IGJ0X2JtYyAqYnRfYm1jID0gZGV2X2dldF9kcnZkYXRhKCZwZGV2LT5kZXYpOwo+ID4gPiAg
IAltaXNjX2RlcmVnaXN0ZXIoJmJ0X2JtYy0+bWlzY2Rldik7Cj4gPiA+IC0JaWYgKCFidF9ibWMt
PmlycSkKPiA+ID4gKwlpZiAoYnRfYm1jLT5pcnEgPCAwKQo+ID4gPiAgIAkJZGVsX3RpbWVyX3N5
bmMoJmJ0X2JtYy0+cG9sbF90aW1lcik7Cj4gPiA+ICAgCXJldHVybiAwOwo+ID4gPiAgIH0KPiAK
PiBCdXQgbm93LCB0aGUgbG9naWMgaXM6IGlmIHRoZSBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFs
KCkgZmFpbGVkLCBpdCByZXR1cm5zCj4gaW1tZWRpYXRlbHksIHRoZSBpcnEgYXQgdGhpcyBwb2lu
dCBpcyBuZWdhdGl2ZSx0aGUgYnRfYm1jX3Byb2JlKCkgY29udGludWUKPiB0byBvcGVyYXRlLiBC
dXQgaW4gdGhlIGZ1bmN0aW9uIGJ0X2JtY19yZW1vdmUoKSwgd2UgbmVlZCBzdGF0dXMgY2hlY2sg
aW4KPiBvcmRlciB0byBleGVjdXRlIGRlbF90aW1lcl9zeW5jKCksIHNvIGNoYW5nZSAiIWJ0X2Jt
Yy0+aXJxIiB0byAiYnRfYm1jLT5pcnEKPiA8IDAiLgo+IAo+IFNvLCB3aGVuIHRoZSBqdWRnbWVu
dCBvZiAiYnRfYm1jLT5pcnEiIGluIHRoZSBmdW5jdGlvbiBidF9ibWNfcmVtb3ZlKCkgZ29lcwo+
IGJhY2sgdG/CoCB0aGUgb3JpZ2luYWwgbmVnYXRpdmUgdmFsdWUsIHRoZSAiYnRfYm1jLT5pcnEg
PSAwIiBpbiB0aGUgbGluZSA0MTAKPiBiZWNvbWUgcmVkdW5kYW50LiBUaGF0J3Mgd2h5IEkgcmVt
b3ZlIGl0Lgo+IAo+IAo+IAo+IEkgYW0gdmVyeSBnbGFkIHRvIGNvbW11bmljYXRlIGFuZCBkaXNj
dXNzIHdpdGggeW91IHRoZXNlIGRheXMuCj4gCj4gVGhhbmtzLAo+IAo+IFRhbmcgQmluCj4gCj4g
Cj4gPiA+IAo+ID4gPiAKPiA+ID4gCj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVu
aXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
