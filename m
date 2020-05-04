Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC241C3B11
	for <lists+openipmi-developer@lfdr.de>; Mon,  4 May 2020 15:16:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jVaxF-00062G-UK; Mon, 04 May 2020 13:16:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jVaxE-000627-BF
 for openipmi-developer@lists.sourceforge.net; Mon, 04 May 2020 13:16:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VBH3Efn4XXIbG2xmQzJe+eWyQyJINI15wWLEaPRCf0s=; b=guvyKyAjz61hJRT50NnuZy4HtO
 SbzJWfgj8jmW9PaAJjbA5yq/9sMfsx09rtmHrf4DvTIwWX8BJveGRzivkDX7Y3Osqto3JzK/gvkbC
 6KIb+e9d+8POI8pEoTOTn8CduyCe1nHmulJ43sDtcWAmNNWiUC6To7eAkSoezthUDE50=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VBH3Efn4XXIbG2xmQzJe+eWyQyJINI15wWLEaPRCf0s=; b=m9LtOXPH5kUQ5XJe3IPxhc44gy
 mQFaPbL5/DsQN3sokD5a6YGRo7kzY6M4jA/Yww3IFuxKANGxZ8grqCH0ITnt9Wx9QPhRFn8aFVwIz
 +95YS+GxJmBcokoCxnbV+VyrltNyGfNgyjjA+CcRan73oi2WaC7e349gLLmmJyuf2HWc=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVaxC-006pxM-FI
 for openipmi-developer@lists.sourceforge.net; Mon, 04 May 2020 13:16:16 +0000
Received: by mail-oi1-f194.google.com with SMTP id a2so6522196oia.11
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 04 May 2020 06:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=VBH3Efn4XXIbG2xmQzJe+eWyQyJINI15wWLEaPRCf0s=;
 b=kechdpiBPlIHWnNVt1TaHpRHCeeS7fwwOCSdtrU9iiNBJsBNu6QWGSKJ+I+FIFQPXX
 lGqgirzt1rIgUFnUt37Wv58OS/r+OEA6Pvf3/BnN7iGn/t7NzfRcan9GZHTBd8aR+lGm
 Ro2kGmjjTkH+xIyLyp5v1BVr/ja60e+p+s4vontPoNN0XOSS7ZPTMjapgaBUcQu5YGYF
 bmJJYWals2klkQiGc+irGyEZyEyjgz8PRvF0CWCiPyy3gZSQptaUG8FOfWg0HtQcOdZx
 zvYJ01grR4mwC1NsWhjMqerezj52WLKgRz3Tu7LMPV4Pz01MfIUSrQFgAUbUec5h56h9
 Px8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=VBH3Efn4XXIbG2xmQzJe+eWyQyJINI15wWLEaPRCf0s=;
 b=sIPrPiYvm3LH3sdsRq3PpibUsapyQ2w8Pmp57NRn8onZi5VaWDH/k7O3WcYGtvN4gt
 3AK6Uo1Nlm9kb65OW/isyHOoYLg11Ppk/ZkaWch4rpxXUvdLJ+5ANEmWUtt3I49KHhAy
 Eful53o/jmjG+X8LiQZi3+im6qut21XOenBH4VwhVivF7cogNlkCV+AOJ4hpYetive4R
 vBUJvc+hB4f8TLAXv4vfBhmePvD/cQnMde3qJX6FOsI4SfSct2kOzxS5a1P11OluYEz1
 xKUW5Lr34eCExBx9fHhQ5K/ESMtGhRBUDAAFqlIYG/TYRvYSzcuXHnh1DibIR9XnsT0X
 mPAg==
X-Gm-Message-State: AGi0PuYXR4Htg13r3ubul0S4SHJfXXfRGO0IgsQcVP8AiEjrckyir3w/
 4U3FouK/6SUebPFNNpgyHw==
X-Google-Smtp-Source: APiQypLy5igSWLA4K0+SZkpOMKFpnRRqNviwXaBY3vSZJuoY8TgfECyJedONERxz5u3Sc7Ss/Rpk/w==
X-Received: by 2002:aca:abc6:: with SMTP id u189mr8764738oie.30.1588598168362; 
 Mon, 04 May 2020 06:16:08 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id g10sm3280807oou.31.2020.05.04.06.16.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 06:16:07 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 6A12F18000D;
 Mon,  4 May 2020 13:16:06 +0000 (UTC)
Date: Mon, 4 May 2020 08:16:05 -0500
From: Corey Minyard <minyard@acm.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <20200504131605.GJ9902@minyard.net>
References: <20200418080228.19028-1-tangbin@cmss.chinamobile.com>
 <20200418134909.GF6246@minyard.net>
 <cc048630-831d-9765-7f7a-7eaacd3a8199@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cc048630-831d-9765-7f7a-7eaacd3a8199@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVaxC-006pxM-FI
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi:bt-bmc: Fix error handling
 and status check
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

T24gU3VuLCBBcHIgMTksIDIwMjAgYXQgMDI6Mjk6MjZQTSArMDgwMCwgVGFuZyBCaW4gd3JvdGU6
Cj4gSGksIENvcmV5Ogo+IAo+IE9uIDIwMjAvNC8xOCAyMTo0OSwgQ29yZXkgTWlueWFyZCB3cm90
ZToKPiA+IE9uIFNhdCwgQXByIDE4LCAyMDIwIGF0IDA0OjAyOjI5UE0gKzA4MDAsIFRhbmcgQmlu
IHdyb3RlOgo+ID4gPiBJZiB0aGUgZnVuY3Rpb24gcGxhdGZvcm1fZ2V0X2lycSgpIGZhaWxlZCwg
dGhlIG5lZ2F0aXZlCj4gPiA+IHZhbHVlIHJldHVybmVkIHdpbGwgbm90IGJlIGRldGVjdGVkIGhl
cmUuIFNvIGZpeCBlcnJvcgo+ID4gPiBoYW5kbGluZyBpbiBidF9ibWNfY29uZmlnX2lycSgpLiBB
bmQgaWYgZGV2bV9yZXF1ZXN0X2lycSgpCj4gPiA+IGZhaWxlZCwgJ2J0X2JtYy0+aXJxJyBpcyBh
c3NpZ25lZCB0byB6ZXJvIG1heWJlIHJlZHVuZGFudCwKPiA+ID4gaXQgbWF5IGJlIG1vcmUgc3Vp
dGFibGUgZm9yIHVzaW5nIHRoZSBjb3JyZWN0IG5lZ2F0aXZlIHZhbHVlcwo+ID4gPiB0byBtYWtl
IHRoZSBzdGF0dXMgY2hlY2sgaW4gdGhlIGZ1bmN0aW9uIGJ0X2JtY19yZW1vdmUoKS4KPiA+IFlv
dSBuZWVkIHRvIG1lbnRpb24gY2hhbmdpbmcgcGxhdGZvcm1fZ2V0X2lycSB0bwo+ID4gcGxhdGZv
cm1fZ2V0X2lycV9vcHRpb25hbCBpbiB0aGUgaGVhZGVyLgo+ID4gCj4gPiBBbm90aGVyIGNvbW1l
bnQgaW5saW5lIGJlbG93Lgo+ID4gCj4gPiBPdGhlcndpc2UsIHRoaXMgbG9va3MgZ29vZC4KPiAK
PiBHb3QgaXQuIFRoZSB2MyB3aWxsIGJlIGFzIGZvbGxvd3PvvJoKPiAKPiBJZiB0aGUgZnVuY3Rp
b24gcGxhdGZvcm1fZ2V0X2lycSgpIGZhaWxlZCwgdGhlIG5lZ2F0aXZlIHZhbHVlCj4gCj4gcmV0
dXJuZWQgd2lsbCBub3QgYmUgZGV0ZWN0ZWQgaGVyZS4gU28gZml4IGVycm9yIGhhbmRsaW5nIGlu
Cj4gCj4gYnRfYm1jX2NvbmZpZ19pcnEoKS4gQW5kIGluIHRoZSBmdW5jdGlvbiBidF9ibWNfcHJv
YmUoKSwKPiAKPiB3aGVuIGdldCBpcnEgZmFpbGVkLCBpdCB3aWxsIHByaW50IGVycm9yIG1lc3Nh
Z2UuIFNvIHVzZQo+IAo+IHBsYXRmb3JtX2dldF9pcnFfb3B0aW9uYWwoKSB0byBzaW1wbGlmeSBj
b2RlLiBGaW5hbGx5IGluIHRoZQo+IAo+IGZ1bmN0aW9uIGJ0X2JtY19yZW1vdmUoKSBzaG91bGQg
bWFrZSB0aGUgcmlnaHQgc3RhdHVzCj4gCj4gY2hlY2sgaWYgZ2V0IGlycSBmYWlsZWQuCj4gCj4g
PiAKPiA+IFlvdSBuZWVkIHRvIHNldCB0aGlzIHRvIHJjLiAgT3RoZXJ3aXNlIGl0IHdpbGwgcmVt
YWluIHRoZSBpbnRlcnJ1cHQKPiA+IG51bWJlciBhc3NpZ25lZCBieSBwbGF0Zm9ybV9nZXRfaXJx
X29wdGlvbmFsKCkuCj4gCj4gWWVzLCBJIHRoaW5rIHlvdSBhcmUgcmlnaHQuIEknbSBub3QgYXMg
Y29uc2lkZXJhdGUgYXMgeW91LiBUaGFuayB5b3UgZm9yCj4geW91ciBpbnN0cnVjdGlvbi4KPiAK
PiBXaGVuIGdldCBpcnEgZmFpbGVkLCB0aGUgJ2J0X2JtYy0+aXJxJyBpcyBuZWdhdGl2ZTsgd2hl
biByZXF1ZXN0IGlycSBmYWlsZWQsCj4gdGhlICdidF9ibWMtPmlycSA9IDAnIGlzIHJpZ2h0Lgo+
IAo+IFNvICdidF9ibWMtPmlycSA8PSAwJyBtZWFucyBpcnEgZmFpbGVkLgoKU29ycnksIEkgbWlz
c2VkIHlvdXIgcXVlc3Rpb24gaGVyZSBhbmQgd2FzIHdhaXRpbmcgZm9yIHYzLgoKV2VsbCwgd2Ug
d2FudCBidF9ibWMtPmlycSA8IDAgdG8gbWVhbiB0aGUgaXJxIHJlcXVlc3QgZmFpbGVkLgoKPiAK
PiBOb3cgbGV0IG1lIHJlYXJyYW5nZSB0aGUgbG9naWMgaGVyZToKPiAKPiDCoMKgwqAgSW4gYnRf
Ym1jX3Byb2JlKCk6Cj4gCj4gwqDCoMKgIMKgwqDCoCBidF9ibWNfY29uZmlnX2lycShidF9ibWMs
IHBkZXYpOwo+IAo+IMKgwqAgwqDCoCDCoCBpZiAoYnRfYm1jLT5pcnEgPiAwKSB7CgpTaG91bGQg
YmUgPj0gMC4KCj4gCj4gwqDCoMKgIMKgwqDCoCB9Cj4gCj4gCj4gwqDCoMKgIEluIGJ0X2JtY19y
ZW1vdmUoKToKPiAKPiDCoMKgwqAgwqDCoMKgIGlmIChidF9ibWMtPmlycSA8PSAwKQo+IMKgwqDC
oCDCoMKgwqAgwqDCoMKgIGRlbF90aW1lcl9zeW5jKCZidF9ibWMtPnBvbGxfdGltZXIpOwoKU2hv
dWxkIGJlIDwgMC4gIEJ1dCBvdGhlciB0aGFuIHRoYXQsIEkgdGhpbmsgaXQncyBjb3JyZWN0LgoK
LWNvcmV5Cgo+IAo+IAo+IElmIHlvdSB0aGluayB0aGlzIGxvZ2ljIGlzIGNvcnJlY3QsIEknbGwg
c3VibWl0IHYzLgo+IAo+IFRoYW5rcywKPiAKPiBUYW5nIEJpbgo+IAo+ID4gCj4gPiAKPiA+IAo+
ID4gCj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
