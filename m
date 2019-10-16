Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83796D9564
	for <lists+openipmi-developer@lfdr.de>; Wed, 16 Oct 2019 17:20:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iKl6E-00053V-Ci; Wed, 16 Oct 2019 15:20:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iKl6C-00053N-9K
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Oct 2019 15:20:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hg//TZrhBsTy9D87m/T6t9gxtTCE+xcZuR7rP4e2SMY=; b=cbld0jwbfO9R4scwydvJpMvY/0
 3dCgYNz9p3dTvRUAoIeWddMZCbh+ls6AJEd9g6z1Is5rbS9dL7WfR35f+pRFtSaLtaTnKxHWk4w4S
 DjtAMYEQItXiJ+JbejP2UlYwYcYpCbwlu9jGAJGgWG669cxOVmVSv/z9JDqW4pskfxyY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hg//TZrhBsTy9D87m/T6t9gxtTCE+xcZuR7rP4e2SMY=; b=XwfIytjbI9RJFOr6IN3yYcIWVh
 n8wgctKr523t0u08+ETIm1BnyXX/ms9VWUhKFzYKd1tJUBmcA7C2Y8PjXdzPWcmy6vZzEoIEfhCOC
 EmpBwVKlV5/aeq1OZ+RWuwLgksQuj2FF+73Q0YAMNez+Rs3IlpqoffpnlunkFa6m9bwc=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iKl69-00BWve-Mc
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Oct 2019 15:20:28 +0000
Received: by mail-oi1-f193.google.com with SMTP id x3so20381965oig.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 16 Oct 2019 08:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Hg//TZrhBsTy9D87m/T6t9gxtTCE+xcZuR7rP4e2SMY=;
 b=H2TT2wssG/M4CGPptijE6fYDUwf6g02pfVhn2pLyGTct7/HPxBRUoc7o0wYy4masnz
 puxOhemptI0TnB1Gk2dbdiI8v1Z1jhViNl/rhVYsWhNJauqCZcXyx/loBdg73ER910jF
 9JI6iLelAXAgp/mqa0NsYUC6GAvq97L62s7oB1XeMtZ32mhjQPj/PFUjUo7y2AVvDd0n
 QKJmLeVwWQ/UWIjxfakQD+LqvVt4nmGvLPGuM0n64E/BYo0+xneHRD0owdjiccLcAClN
 2vMyt43umiFBp9GBuJxIN2X7YanifU34H1pCuNbYm17q+S/dUB8EYAU2s+mItkqu7Ux2
 foSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=Hg//TZrhBsTy9D87m/T6t9gxtTCE+xcZuR7rP4e2SMY=;
 b=IRK9LLzudjjjWGmKUCYpdFt1ctHbVyKOHUBVtS3xD5o6HfNowQ3PF+ZEhbdgdofUNS
 Z/1LdAfTD6QGv3X7EvcilIIlJnxdyyZokiYnRhDpPftHQCB4h+sGvhuc4dps5GZPArp/
 6XQzyx6AOjxHNoiGPMMmTmjrWKSBd6plXc3JprOy8dcy87/eG7VnuQDAaNLC12lt3yaj
 6Mgr967/Z3xnB7xuHgEggIJusXJ1RZVmajieOJZqcnQd7/W69JLU0sr6w99bp6sFG+7+
 F8uwCb0fGe6HBp1lHNzXCtL3kKd6fdnr8dtJ1URVDvhihDQn7v8i2ZY8yDbvrarL3RDS
 jdfg==
X-Gm-Message-State: APjAAAWzT+XSzcg5S29Bx7gmIdXiFooqnQ9BJmr4fO652lLA/cRF3Ker
 31weSBlVgKVgEwwjXuZPkANAOnk=
X-Google-Smtp-Source: APXvYqw29TSLm5lXfqhgqJ4rgsbwSamu6EsD2YQAkOS+jHJBw4/SftqEt/3cn7iBZ7a/ahH0VVTfAQ==
X-Received: by 2002:a54:4582:: with SMTP id z2mr4069134oib.140.1571239219494; 
 Wed, 16 Oct 2019 08:20:19 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id k2sm7449649oih.38.2019.10.16.08.20.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 08:20:18 -0700 (PDT)
Received: from t560 (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 49C4A180056;
 Wed, 16 Oct 2019 15:20:18 +0000 (UTC)
Date: Wed, 16 Oct 2019 10:20:17 -0500
From: Corey Minyard <minyard@acm.org>
To: =?utf-8?Q?C=C3=A9dric?= Le Goater <clg@kaod.org>
Message-ID: <20191016152017.GO14232@t560>
References: <20191016092131.23096-1-yuehaibing@huawei.com>
 <20191016141936.GN14232@t560>
 <789af3ff-9ed8-5869-05c4-9cfb2ac5e9d5@kaod.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <789af3ff-9ed8-5869-05c4-9cfb2ac5e9d5@kaod.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iKl69-00BWve-Mc
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
Reply-To: minyard@acm.org
Cc: arnd@arndb.de, gregkh@linuxfoundation.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 Alistair Popple <alistair@popple.id.au>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gV2VkLCBPY3QgMTYsIDIwMTkgYXQgMDQ6NDE6MDdQTSArMDIwMCwgQ8OpZHJpYyBMZSBHb2F0
ZXIgd3JvdGU6Cj4gT24gMTYvMTAvMjAxOSAxNjoxOSwgQ29yZXkgTWlueWFyZCB3cm90ZToKPiA+
IE9uIFdlZCwgT2N0IDE2LCAyMDE5IGF0IDA1OjIxOjMxUE0gKzA4MDAsIFl1ZUhhaWJpbmcgd3Jv
dGU6Cj4gPj4gVXNlIGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZSgpIHRvIHNpbXBsaWZ5
IHRoZSBjb2RlIGEgYml0Lgo+ID4+IFRoaXMgaXMgZGV0ZWN0ZWQgYnkgY29jY2luZWxsZS4KPiA+
IAo+ID4gQWRkaW5nIHRoZSBtb2R1bGUgYXV0aG9yIGFuZCBvdGhlcnMuIEkgY2FuJ3Qgc2VlIGEg
cmVhc29uIHRvIG5vdCBkbwo+ID4gdGhpcy4KPiAKPiB5ZXMuIExvb2tzIGdvb2QgdG8gbWUuCj4g
Cj4gUmV2aWV3ZWQtYnk6IEPDqWRyaWMgTGUgR29hdGVyIDxjbGdAa2FvZC5vcmc+CgpRdWV1ZWQg
Zm9yIG5leHQgbWVyZ2Ugd2luZG93LCB1bmxlc3Mgc29tZW9uZSBwcm90ZXN0cy4KCi1jb3JleQoK
PiAKPiBUaGFua3MsCj4gCj4gQy4KPiAKPiA+IC1jb3JleQo+ID4gCj4gPj4KPiA+PiBTaWduZWQt
b2ZmLWJ5OiBZdWVIYWliaW5nIDx5dWVoYWliaW5nQGh1YXdlaS5jb20+Cj4gPj4gLS0tCj4gPj4g
IGRyaXZlcnMvY2hhci9pcG1pL2J0LWJtYy5jIHwgNCArLS0tCj4gPj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2NoYXIvaXBtaS9idC1ibWMuYyBiL2RyaXZlcnMvY2hhci9pcG1pL2J0LWJtYy5jCj4g
Pj4gaW5kZXggNDBiOTkyNy4uZDM2YWVhYyAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL2NoYXIv
aXBtaS9idC1ibWMuYwo+ID4+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2J0LWJtYy5jCj4gPj4g
QEAgLTQ0NCwxNSArNDQ0LDEzIEBAIHN0YXRpYyBpbnQgYnRfYm1jX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPj4gIAo+ID4+ICAJYnRfYm1jLT5tYXAgPSBzeXNjb25fbm9k
ZV90b19yZWdtYXAocGRldi0+ZGV2LnBhcmVudC0+b2Zfbm9kZSk7Cj4gPj4gIAlpZiAoSVNfRVJS
KGJ0X2JtYy0+bWFwKSkgewo+ID4+IC0JCXN0cnVjdCByZXNvdXJjZSAqcmVzOwo+ID4+ICAJCXZv
aWQgX19pb21lbSAqYmFzZTsKPiA+PiAgCj4gPj4gIAkJLyoKPiA+PiAgCQkgKiBBc3N1bWUgaXQn
cyBub3QgdGhlIE1GRC1iYXNlZCBkZXZpY2V0cmVlIGRlc2NyaXB0aW9uLCBpbgo+ID4+ICAJCSAq
IHdoaWNoIGNhc2UgZ2VuZXJhdGUgYSByZWdtYXAgb3Vyc2VsdmVzCj4gPj4gIAkJICovCj4gPj4g
LQkJcmVzID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsK
PiA+PiAtCQliYXNlID0gZGV2bV9pb3JlbWFwX3Jlc291cmNlKCZwZGV2LT5kZXYsIHJlcyk7Cj4g
Pj4gKwkJYmFzZSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKPiA+
PiAgCQlpZiAoSVNfRVJSKGJhc2UpKQo+ID4+ICAJCQlyZXR1cm4gUFRSX0VSUihiYXNlKTsKPiA+
PiAgCj4gPj4gLS0gCj4gPj4gMi43LjQKPiA+Pgo+ID4+Cj4gCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
