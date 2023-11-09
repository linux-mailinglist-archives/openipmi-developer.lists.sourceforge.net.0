Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E2B7E6E7F
	for <lists+openipmi-developer@lfdr.de>; Thu,  9 Nov 2023 17:19:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1r17ks-0007EZ-F8;
	Thu, 09 Nov 2023 16:19:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1r17kj-0007E8-Ed
 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Nov 2023 16:19:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1yeo+9mt+Ez0MOMDdAtRQmWNsD2t0+FkfWQtBtTWQbU=; b=cTQbYi4sAyqnqLW2RRtviszBip
 Hz1sGD/RuPWxsP/jY3VCEqL0fnCyckzBj+Qq/7HDGqKPHVuWeV9+Syy0LKGnv+U4PsVRMDjG+32Sb
 9TqiP+jdA6PJQI8OiO7K6Axl8o5UFBcZ53wVQ4fFMBTN+Z0mrcMARscZQGYcTgRVoOr0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1yeo+9mt+Ez0MOMDdAtRQmWNsD2t0+FkfWQtBtTWQbU=; b=h4AEtCyuidolpk4gh2VrmPRjw4
 JmDnngIsIER4XNRSEOOKfoGE/WFEmZzKhJY3GtLEx/VWZobLpHhJQFA0TNFRcHNYf6mDKDfmWt1bJ
 yVlD+tgpzshtDiUCyy25CmcLTkAMLgvRtl7/5whueGR3+EUmO8lc715R+nBPKEjf/hCk=;
Received: from mail-oa1-f51.google.com ([209.85.160.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1r17kY-0001xo-Uy for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Nov 2023 16:19:28 +0000
Received: by mail-oa1-f51.google.com with SMTP id
 586e51a60fabf-1f0820b7657so542255fac.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 09 Nov 2023 08:19:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699546757; x=1700151557; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=1yeo+9mt+Ez0MOMDdAtRQmWNsD2t0+FkfWQtBtTWQbU=;
 b=FUuuvrvPglpdeEUpFA0WXqdo7pscS3Yor5n3toBx0ZNUInwiYxqarhbTCUGLorXvm8
 63+v7bli+JRKIuzzv0FCR/5+TKLx+Xycxp9IXPCrb9Yc7PpqI1Rx3tao0UGZmRfPUwc6
 taLW9VrazmB/A9UMKSEMv+rCE542zyFZi6LXAxpYfWUMWcHgAJArYJpy0KmvcLaH4uvD
 Z/8K2BphHmoWJB8N/zvyhKqpDE9fpYqdvBncmsjJvhT6bPJwqC8Jdn2SiSQ1lSkG6xWY
 /oO0bCe/x3ATBMNyLQpdarcWFK5Ow0p66pcwksBmQYAz9YEpJBgmk5e+FCOzg2338yqo
 OeVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699546757; x=1700151557;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=1yeo+9mt+Ez0MOMDdAtRQmWNsD2t0+FkfWQtBtTWQbU=;
 b=a151Ypr8hkH6u8mEsVjXHz7oJcgiDkiqpkU5dSupM5LULl96gAk2eAEn+yE9VMKoSv
 6/zOMtJR7UV2fJ8/mkjTku981FW0UHM8rqyNydpIa8+9k6lTE4FYw0Gcg5wck5dbyQdC
 veVH4wEhXnh3JnxMS3UNWQQPUnQvs7CQgzBmaDxhF53NPj3j0hZ7mWEY2Eazh8UxZcui
 HoMPhXBhktBkIvuKW82/Rn5OXmxSjZ+vWmbvNwzTGNZWv7qBFTz3KR38vBdg8EQ1LLX6
 Atg6MxF45A6NJcdrAvKoYh5/jRLduaNI2IttPgr1rzXmPkYM2UklGpEbYoGIMA1sCcS2
 W+Qg==
X-Gm-Message-State: AOJu0Yyp3Xdk9Rh0kKehtnQ9rR5NVClMf3vCWVgoYi8e1vBNcAjtc90B
 gfBUP9qJH4mGsYPDHTiV4gw9kOFFtA==
X-Google-Smtp-Source: AGHT+IGltk1kCoDCoGDjzbB2Nz1qQ2J0fJsIgmBnAuHOYjN4iTNKhHmilOBHg5bZXqJb9QtcsS/Bbg==
X-Received: by 2002:a05:6870:1056:b0:1e9:8ab9:11cd with SMTP id
 22-20020a056870105600b001e98ab911cdmr4810101oaj.45.1699546757204; 
 Thu, 09 Nov 2023 08:19:17 -0800 (PST)
Received: from serve.minyard.net ([47.189.89.62])
 by smtp.gmail.com with ESMTPSA id
 h24-20020a9d3e58000000b006cd093a0ea0sm2310510otg.5.2023.11.09.08.19.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Nov 2023 08:19:16 -0800 (PST)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:66bb:610d:ec8d:3b08])
 by serve.minyard.net (Postfix) with ESMTPSA id 846DE180053;
 Thu,  9 Nov 2023 16:19:15 +0000 (UTC)
Date: Thu, 9 Nov 2023 10:19:14 -0600
From: Corey Minyard <minyard@acm.org>
To: Christian Theune <ct@flyingcircus.io>
Message-ID: <ZU0GghPIh0CajfEj@mail.minyard.net>
References: <67d8a49d-6c6e-4543-b76e-bdf977e2f357@email.android.com>
 <E251E387-91D1-4417-AB11-38B7DE59584F@flyingcircus.io>
 <ZRrc7Eet4EKbSro6@mail.minyard.net>
 <884F85AA-E8F8-4113-A89B-DF759D2FF921@flyingcircus.io>
 <ZRujFdwLxQVVfQj7@mail.minyard.net>
 <3B168EB2-55E5-4F40-BAEC-A1861CDBE2D3@flyingcircus.io>
 <ZUzjnK+EVUmHbVOE@mail.minyard.net>
 <18E8EDB0-F910-4688-B33A-62A1804CEFAB@flyingcircus.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18E8EDB0-F910-4688-B33A-62A1804CEFAB@flyingcircus.io>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Nov 09, 2023 at 04:41:00PM +0100, Christian Theune
 wrote: > > > On 9. Nov 2023, at 14:50, Corey Minyard <minyard@acm.org> wrote:
 > > > > It's 09c5ba0aa2fc "printk: add kthread console printers [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.51 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1r17kY-0001xo-Uy
Subject: Re: [Openipmi-developer] SOL via syslog?
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVGh1LCBOb3YgMDksIDIwMjMgYXQgMDQ6NDE6MDBQTSArMDEwMCwgQ2hyaXN0aWFuIFRoZXVu
ZSB3cm90ZToKPiAKPiA+IE9uIDkuIE5vdiAyMDIzLCBhdCAxNDo1MCwgQ29yZXkgTWlueWFyZCA8
bWlueWFyZEBhY20ub3JnPiB3cm90ZToKPiA+IAo+ID4gSXQncyAwOWM1YmEwYWEyZmMgInByaW50
azogYWRkIGt0aHJlYWQgY29uc29sZSBwcmludGVycyIgYW5kIHNvbWUKPiA+IG90aGVycy4gIEl0
J3MgaW4gNS4xOSwgc28gaXQgd2FzIGxhdGVyIHRoYW4gSSB0aG91Z2h0Lgo+IAo+IEludGVyZXN0
aW5nLiBJIGNhbiBzZWUgaXQgbWVyZ2VkIGJ1dCB0aGVuIGFsc28gcmV2ZXJ0ZWQgQUZBSUNUIGJl
Zm9yZSB0aGUgNS4xOSByZWxlYXNlLgoKT2gsIHllYWguICBHZXR0aW5nIHRoaXMgaW4gaGFzIGJl
ZW4gYSBmaWdodCwgaXQncyBiZWVuIGdvaW5nIG9uIGEgbG9uZwp0aW1lLiAgUHJpbnRrIHRpZXMg
aW50byBzbyBtYW55IHRoaW5ncy4KCj4gCj4gSSBzYXcgYSBsb3Qgb2Ygd29yayBhcm91bmQga3By
aW50KCkgaGFwcGVuZWQgaW4gYW5kIGFmdGVyIDUuMTUgc28gSSBndWVzcyB1cGdyYWRpbmcgdG8g
NS4xNSBzaG91bGRu4oCZdCBodXJ0IGluIGFueSBjYXNlLgo+IAo+IE5vdCBoYXZpbmcgYSByZXBy
b2R1Y2VyIGlzIHRoZSByZWFsIGJ1bW1lci4KPiAKPiBJIHdhcyBhbHNvIHdvbmRlcmluZyB3aGV0
aGVyIHVzaW5nIG90aGVyIHV0aWxpdGllcyBsaWtlIHN0b3Jpbmcga2VybmVsIGNyYXNoIGR1bXBz
IG9uIHN3YXAgd291bGQgYmUgYSBnb29kIGF2ZW51ZS4gVGhlIG9ubHkgaXNzdWUgaGVyZSBiZWlu
ZyB0aGF0IHRoaXMgaXMgYSBLVk0vUWVtdSBob3N0IHdpdGggbG90cyBvZiBSQU0gYW5kIEkgdGhp
bmsgSSBkb27igJl0IGhhdmUgZW5vdWdoIGRpc2sgc3BhY2UgdG8gY2FwdHVyZSBmdWxsIHN5c3Rl
bSBtZW1vcnkgZHVtcHMg4oCmIAoKWW91IG1pZ2h0IGJlIHN1cnByaXNlZCwgaXQgaXMgcHJvYmFi
bHkgc21hbGxlciB0aGFuIHlvdSB0aGluay4KCj4gCj4gPiBJJ20gbm90IGJlaW5nIGEgbG90IG9m
IGhlbHAgaGVyZSwgYnV0IGhvcGVmdWxseSBpdCBjYW4gbGVhZCB5b3UKPiA+IHNvbWV3aGVyZSB5
b3UgY2FuIGZpZ3VyZSB0aGlzIG91dC4gIFRoZXNlIGNhbiBiZSBoYXJkIHByb2JsZW1zIHRvCj4g
PiB0cmFjayBkb3duLgo+IAo+IEkgZ3Vlc3Mgd2XigJlyZSBib3RoIHByZXR0eSBibGluZCBoZXJl
LiBJIGFwcHJlY2lhdGUgYW55IGFzc2lzdGFuY2UuIDopCj4gCj4gPiBJIGRvbid0IHJlbWVtYmVy
LCBoYWQgeW91IGRvbmUgYW55dGhpbmcgd2l0aCB0aGUga2VybmVsIHByZWVtcHQgdHJhY2luZz8K
PiA+IFRoYXQgY2FuIGJlIHVzZWZ1bCBmb3IgdHJhY2tpbmcgZG93biBsb25nIHByZWVtcHQgb2Zm
IHRpbWVzLgo+IAo+IFVobSBubywgbm90IHlldC4gQW55IHBvaW50ZXJzIHdoZXJlIHRvIHN0YXJ0
IGFuZCBob3cgdGhpcyByZWxhdGVzIHRvIHBvdGVudGlhbCBrcHJpbnQgYnVmZmVycz8KCkFjdHVh
bGx5LCBJJ20gY29uZnVzaW5nIHRoaXMgd2l0aCBhbm90aGVyIGlzc3VlIGRlYWxpbmcgd2l0aCBy
ZWFsIHRpbWUKbGF0ZW5jaWVzIGFuZCBwcmludGsuICBQcmVlbXB0IHRyYWNpbmcgd29uJ3QgaGVs
cCB5b3VyIGlzc3VlLgoKQSBhc3N1bWUgeW91IGFyZSB1c2luZyB0aGUgIm5vcm1hbCIgTk1JIHdh
dGNoZG9nIGFuZCBpdCdzIG5vdAp0cmlnZ2VycmluZy4gIEl0IHNob3VsZCBiZSBvbiBieSBkZWZh
dWx0LiAgWW91IGNhbiBsb29rIGluCi9wcm9jL3N5cy9rZW5lbC9ubWlfd2F0Y2hkb2cgdG8gc2Vl
LgoKSSB3YXMgd29ya2luZyB3aXRoIGEgY3VzdG9tZXIgb2Ygb3VyIGNvbXBhbmllcyBvbiBzb21l
dGhpbmcgc2ltaWxhciwgYQp3YXRjaGRvZyByZXNldCB3aXRoIG5vdCBkaXNjZXJuYWJsZSByZWFz
b24uICBUaGV5IGNvdWxkbid0IHVzZSB0aGUKc3RhbmRhcmQgTk1JIHdhdGNoZG9nLCBzbyB3ZSBz
d2l0Y2hlZCB0byB1c2luZyBhbiBOTUkgd2F0Y2ggZnJvbSB0aGUKQk1DLiAgU2V0IHRoZSBwcmVh
Y3Rpb24gdG8gbm1pIGFuZCB0aGUgcHJlb3AgdG8gcGFuaWMuCgpXaXRoIHRoYXQsIHlvdSBjYW4g
dGFrZSBhIGtlcm5lbCBjb3JlZHVtcC4gIFlvdSBnZW5lcmFsbHkgb25seSB0YWtlIGEKY29yZWR1
bXAgb2Yga2VybmVsIG1lbW9yeSAod2l0aG91dCBidWZmZXJzKSwgc28gaXQncyBub3QgZ2VuZXJh
bGx5IGEKaHVnZSBhbW91bnQgb2YgZGlzayBzcGFjZSwgYW5kIGl0J3MgY29tcHJlc3NlZC4KCk9m
IGNvdXJzZSwgdGhlbiB5b3UgaGF2ZSB0byBhbmFseXplIGEgY29yZWR1bXAsIHdoaWNoIGhhcyBp
dHMgb3duCmRpZmZpY3VsdGllcyA6LSguCgotY29yZXkKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0
Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
