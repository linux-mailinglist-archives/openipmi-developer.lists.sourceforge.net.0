Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8718EF9AAE
	for <lists+openipmi-developer@lfdr.de>; Tue, 12 Nov 2019 21:29:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iUcnI-0006K1-BA; Tue, 12 Nov 2019 20:29:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iUcnH-0006Jt-Ic
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Nov 2019 20:29:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nuSxtpboCRFRoH7ONR/ButKqpEu2VWZcgPYrZ3xx478=; b=KNzmRV8XJ2CUVnwyaxT625g1Uo
 bh3+h7EvqDpiFvOcOx1DJsOMn/PNeEi+S3MontIpWFD84XWXvG/kWbrhnnf54LeaUrY93pdKBasLx
 tHkIvyKbF9K1HJLVVp5JKk64LiJdtDtLBYoQI0IASsqkwLK3jx11Dsa8MK46eiYhVxKc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nuSxtpboCRFRoH7ONR/ButKqpEu2VWZcgPYrZ3xx478=; b=R9NUUXcdJCzkn/brpfSI6en8cl
 HxKGbNPUnSA5JY1QnGp+knNq8pbEmnKv5oP489s2xOm5SV8XDo1yw2wxmDSwYZzUeb82/yXEQ79Ti
 mjLleoBUtNxs1cC8xhuy1y46dt2pwpsAVaPmbSven4F+W4rYZHvBvjXURJ9LpJD1fa7Y=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iUcnG-00Dwz4-97
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Nov 2019 20:29:43 +0000
Received: by mail-oi1-f193.google.com with SMTP id a14so16088213oid.5
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 12 Nov 2019 12:29:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=nuSxtpboCRFRoH7ONR/ButKqpEu2VWZcgPYrZ3xx478=;
 b=c5yUTYduIUiho00H0b3vhjtRjB+ajbeo7u2wmpJPSMI0+GG55FNytcQPRmRnWnyFj1
 m432tYV8/llpTRhPJfog/sSGDxnrAMUqkwR9Zqq+MNfLAtXO56t75b8042lQmynQEPUQ
 P66WVNVMDWdc5oalPToJYo0bl83h34bPblu7b9DkYCExgOHck3JuCFrqAIJm5P/otTux
 Uus+Bili5xOtFHdymFj7uqdzv/GtqofxZY5yfPdUTg/eg8NRGUZD9t5M+O/2ST7Pfqiy
 Wd6X4pUb8PBIxJoVziUV1cNNzAp49YvHBtA/neT73vXlgc9I9FOL2Znm/AbvtWgo0S+K
 jScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=nuSxtpboCRFRoH7ONR/ButKqpEu2VWZcgPYrZ3xx478=;
 b=Z4a4fHj8HPWsqPAsTborQlfceTNlRZXlNjN1eGN7KrXs1nib/3fLmVhZ5dNxWuVrCA
 4Xqo181rW8rxFXhS1BtdkvbYj8MvC3Nk+hDvBxZZpS6+WmveORMIp8rJA9Jg/ggmXcBl
 kY3gI9OXEiaRygacr6yFRQQkL+vVCRNMgqswCLaQwU2/NHias6P8dZqXkPZqgpOQlHzv
 4bQ6MU2u73bVkvXROCwAIb1xVGcBBQk8yIatI2Te66aIfsNO+LSMlPVOSupiA5PNq8gG
 7Zr/XuflPNOpBMHhltRic5p5NIxKZsLUkA5s9cTu/BoBDcmIkalyUxA1p9OqIxf5L3dw
 dlDw==
X-Gm-Message-State: APjAAAWr3pwjnZC44rUvx190lfC9bmWn1YxA1WBOOWB7Be10cQQ7zbVh
 xAeMxkbNnhFYRG9s1eKxIg==
X-Google-Smtp-Source: APXvYqzkAt+1k/8BZCXeyArXDOhGImLjCdeMesIH8HcGa0Km475jeAHh7ADW67WFyJhYu8RqDGgvZQ==
X-Received: by 2002:a05:6808:181:: with SMTP id
 w1mr751465oic.109.1573590575994; 
 Tue, 12 Nov 2019 12:29:35 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id k6sm2775908otr.35.2019.11.12.12.29.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 12:29:35 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 4A03118016D;
 Tue, 12 Nov 2019 20:29:33 +0000 (UTC)
Date: Tue, 12 Nov 2019 14:29:32 -0600
From: Corey Minyard <minyard@acm.org>
To: Vijay Khemka <vijaykhemka@fb.com>
Message-ID: <20191112202932.GJ2882@minyard.net>
References: <20191112023610.3644314-1-vijaykhemka@fb.com>
 <20191112023610.3644314-2-vijaykhemka@fb.com>
 <20191112124845.GE2882@minyard.net>
 <7BC487D6-6ACA-46CE-A751-8367FEDEE647@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7BC487D6-6ACA-46CE-A751-8367FEDEE647@fb.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iUcnG-00Dwz4-97
Subject: Re: [Openipmi-developer] [PATCH 2/2] drivers: ipmi: Modify max
 length of IPMB packet
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
Cc: "cminyard@mvista.com" <cminyard@mvista.com>, Sai Dasari <sdasari@fb.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDc6NTY6MzRQTSArMDAwMCwgVmlqYXkgS2hlbWthIHdy
b3RlOgo+IAo+IAo+IO+7v09uIDExLzEyLzE5LCA0OjQ4IEFNLCAiQ29yZXkgTWlueWFyZCIgPHRj
bWlueWFyZEBnbWFpbC5jb20gb24gYmVoYWxmIG9mIG1pbnlhcmRAYWNtLm9yZz4gd3JvdGU6Cj4g
Cj4gICAgIE9uIE1vbiwgTm92IDExLCAyMDE5IGF0IDA2OjM2OjEwUE0gLTA4MDAsIFZpamF5IEto
ZW1rYSB3cm90ZToKPiAgICAgPiBBcyBwZXIgSVBNQiBzcGVjaWZpY2F0aW9uLCBtYXhpbXVtIHBh
Y2tldCBzaXplIHN1cHBvcnRlZCBpcyAyNTUsCj4gICAgID4gbW9kaWZpZWQgTWF4IGxlbmd0aCB0
byAyNDAgZnJvbSAxMjggdG8gYWNjb21tb2RhdGUgbW9yZSBkYXRhLgo+ICAgICAKPiAgICAgSSBj
b3VsZG4ndCBmaW5kIHRoaXMgaW4gdGhlIElQTUIgc3BlY2lmaWNhdGlvbi4KPiAgICAgCj4gICAg
IElJUkMsIHRoZSBtYXhpbXVtIG9uIEkyQyBpcyAzMiBieXRzLCBhbmQgdGFibGUgNi05IGluIHRo
ZSBJUE1JIHNwZWMsCj4gICAgIHVuZGVyICJJUE1CIE91dHB1dCIgc3RhdGVzOiBUaGUgSVBNQiBz
dGFuZGFyZCBtZXNzYWdlIGxlbmd0aCBpcwo+ICAgICBzcGVjaWZpZWQgYXMgMzIgYnl0ZXMsIG1h
eGltdW0sIGluY2x1ZGluZyBzbGF2ZSBhZGRyZXNzLgo+IAo+IFdlIGFyZSB1c2luZyBJUE1JIE9F
TSBtZXNzYWdlcyBhbmQgb3VyIHJlc3BvbnNlIHNpemUgaXMgYXJvdW5kIDE1MCBieXRlcwo+IEZv
ciBzb21lIG9mIHJlc3BvbnNlcy4gVGhhdCdzIHdoeSBJIGhhZCBzZXQgaXQgdG8gMjQwIGJ5dGVz
LgoKSG1tLiAgV2VsbCwgdGhhdCBpcyBhIHByZXR0eSBzaWduaWZpY2FudCB2aW9sYXRpb24gb2Yg
dGhlIHNwZWMsIGJ1dAp0aGVyZSdzIG5vdGhpbmcgaGFyZCBpbiB0aGUgcHJvdG9jb2wgdGhhdCBw
cm9oaWJpdHMgaXQsIEkgZ3Vlc3MuCgpJZiBBc21hYSBpcyBvayB3aXRoIHRoaXMsIEknbSBvayB3
aXRoIGl0LCB0b28uCgotY29yZXkKCj4gICAgIAo+ICAgICBJJ20gbm90IHN1cmUgd2hlcmUgMTI4
IGNhbWUgZnJvbSwgYnV0IG1heWJlIGl0IHNob3VsZCBiZSByZWR1Y2VkIHRvIDMxLgo+ICAgICAK
PiAgICAgLWNvcmV5Cj4gICAgIAo+ICAgICA+IAo+ICAgICA+IFNpZ25lZC1vZmYtYnk6IFZpamF5
IEtoZW1rYSA8dmlqYXlraGVta2FAZmIuY29tPgo+ICAgICA+IC0tLQo+ICAgICA+ICBkcml2ZXJz
L2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQuYyB8IDIgKy0KPiAgICAgPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gICAgID4gCj4gICAgID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jIGIvZHJpdmVycy9jaGFyL2lwbWkv
aXBtYl9kZXZfaW50LmMKPiAgICAgPiBpbmRleCAyNDE5YjlhOTI4YjIuLjdmOTE5OGJiY2U5NiAx
MDA2NDQKPiAgICAgPiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQuYwo+ICAg
ICA+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWJfZGV2X2ludC5jCj4gICAgID4gQEAgLTE5
LDcgKzE5LDcgQEAKPiAgICAgPiAgI2luY2x1ZGUgPGxpbnV4L3NwaW5sb2NrLmg+Cj4gICAgID4g
ICNpbmNsdWRlIDxsaW51eC93YWl0Lmg+Cj4gICAgID4gIAo+ICAgICA+IC0jZGVmaW5lIE1BWF9N
U0dfTEVOCQkxMjgKPiAgICAgPiArI2RlZmluZSBNQVhfTVNHX0xFTgkJMjQwCj4gICAgID4gICNk
ZWZpbmUgSVBNQl9SRVFVRVNUX0xFTl9NSU4JNwo+ICAgICA+ICAjZGVmaW5lIE5FVEZOX1JTUF9C
SVRfTUFTSwkweDQKPiAgICAgPiAgI2RlZmluZSBSRVFVRVNUX1FVRVVFX01BWF9MRU4JMjU2Cj4g
ICAgID4gLS0gCj4gICAgID4gMi4xNy4xCj4gICAgID4gCj4gICAgIAo+IAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9w
ZXIK
