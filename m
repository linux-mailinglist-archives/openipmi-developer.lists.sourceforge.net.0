Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE3A8A1846
	for <lists+openipmi-developer@lfdr.de>; Thu, 11 Apr 2024 17:11:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ruw5Q-0003zF-0v;
	Thu, 11 Apr 2024 15:11:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1ruw5O-0003z8-TL
 for openipmi-developer@lists.sourceforge.net;
 Thu, 11 Apr 2024 15:11:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5+zFEYcFGgbVYjM4vgY3BN6Q53qllrvkhMJ4PRExZuo=; b=YADjBXrRzqCgcjbVv1ngQIPjL+
 NHKwHq9WUkAzMl2Kvm5fEqUG2Xj5efQSJoDpnTBZrrV7/J6kYIEeFRkaYbiLtC4B/HWANivlrG4nP
 kBjtBpv/weam4TnNB2qXaXSQJumyYJWMylebUBHgbvg6mDwt018UPJS0bU4Z7z4C/0cw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5+zFEYcFGgbVYjM4vgY3BN6Q53qllrvkhMJ4PRExZuo=; b=BVuwYnotw3y1662brCjxt7JP4X
 OnGTQxsPJtlq5UGk3T5+m3/nY8KDD+5BxJPUmRbACaz4fAXhIN6CncznAOi82c5qeGoARijLeGL/o
 K985vgptGx/o3YYEEN44tgXiCuiYzftoFWhkIjY/sOttYUNIq27TMNMfLImAytO5+Alw=;
Received: from mail-oo1-f46.google.com ([209.85.161.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ruw5O-00053y-4O for openipmi-developer@lists.sourceforge.net;
 Thu, 11 Apr 2024 15:11:35 +0000
Received: by mail-oo1-f46.google.com with SMTP id
 006d021491bc7-5aa22ebd048so4071859eaf.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 11 Apr 2024 08:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712848283; x=1713453083; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=5+zFEYcFGgbVYjM4vgY3BN6Q53qllrvkhMJ4PRExZuo=;
 b=QeDRmISDe5QckIaGqzyYUuaStJaqNSgUuiv3io3BQQ6fq88wbhBUjtqVlUiK6uGcSp
 2w8VJ18eVjl8tMWhB0tKKoNgWGs98zsWyjej4zOY4TNMPBiwZIWNNOp8zpeJ/GX+CyEN
 YL0q8K/pZb8jnMryunST7Rl1yylrsPMnlyHoIV6qo5IQa3EPN/L8SOlVOHjBH03OiypH
 QXVH73YBBXucjnHLoq7Sc8tW2xsEHk700sxFAvccqmgdn7N3GP/Uyr4iS7K/BUmx+Xnx
 pt7/PQ89l96aGz44Zx2wVL0mlXDoZcxB6/whzMCyAjfpYsFfpVF9bw+IxQNvr42L5RR+
 HCqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712848284; x=1713453084;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5+zFEYcFGgbVYjM4vgY3BN6Q53qllrvkhMJ4PRExZuo=;
 b=u/zyZpIf4XSmhPrCNZ2OYdAcoOh9jVjYRLLasT+UlPLxQeIjHBEST4jxo3Sfzay/JT
 xiRO+BY+rJH2J26BJZTWPJk1JijheauXSOmfzdlVF41Dv8HDuu0o2dH0ZnMn/kvrrB0/
 U1XQEBBWCDgR438+8Iibv7PJSgqSEoKZr7+ug9lWaIOjiAOkPvSIWl47+yPGbQ+a5hFq
 Ldha9JI3M7pZT3KNSuxHdlX3sqOEr452J/kW7BdojZzwEqa7CzWaD8I9a+GQTorZMAFP
 7etCgudOrtOFPQAHhrLr3dFMjHHJhSL/BC9tODYQ2kOv+gokcqM4rlpZdFq6Q5hsCLTn
 5ZaA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUziC7C88Izy0JmhTdJbuWNQgcRdQCDAIzY0iFa1LXhW3P9AuLMIJIBQiYWO6WRywjj6NN8VbTGOSKf5mQWodMK1UFn1kzFzYGYjHxB1nY+bwUPFbNN1FNu
X-Gm-Message-State: AOJu0Ywp+uuOgUPhFcsl2dWNazihG99xeibD34YGGziNoNyu0Mwb0k48
 Y5wze6y7+TyrJ66Vhz5CIx06RHTPCOB4bQPApk1AZPEdBC2JJtw=
X-Google-Smtp-Source: AGHT+IFB6Cokk57WMCZhgqg113k9hoFMhs9i+078DRUKacemNlRQbXO4GTcI3zUnKw7d8YHw3vLDpA==
X-Received: by 2002:a05:6820:1391:b0:5aa:3b8a:b491 with SMTP id
 i17-20020a056820139100b005aa3b8ab491mr6964498oow.4.1712848283554; 
 Thu, 11 Apr 2024 08:11:23 -0700 (PDT)
Received: from serve.minyard.net ([47.184.173.124])
 by smtp.gmail.com with ESMTPSA id
 ev8-20020a056820310800b005a9c8091580sm353207oob.22.2024.04.11.08.11.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Apr 2024 08:11:22 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:e322:3bf8:f626:ba3a])
 by serve.minyard.net (Postfix) with ESMTPSA id 22476180011;
 Thu, 11 Apr 2024 15:11:22 +0000 (UTC)
Date: Thu, 11 Apr 2024 10:11:21 -0500
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <Zhf9mQx/KgXOzPTs@mail.minyard.net>
References: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
 <3uhfeeahn2u23mxyumyxcyx4kmcxzczipkan7eqh4aslsmhxyz@zgsmwj2jvb2v>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3uhfeeahn2u23mxyumyxcyx4kmcxzczipkan7eqh4aslsmhxyz@zgsmwj2jvb2v>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Apr 11, 2024 at 09:15:03AM +0200, Uwe Kleine-König
    wrote: > Hello, > > On Tue, Mar 05, 2024 at 05:26:57PM +0100, Uwe Kleine-König
    wrote: > > this series converts all drivers below drivers/ch [...] 
 
 Content analysis details:   (0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [209.85.161.46 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: pengutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.161.46 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
  0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1ruw5O-00053y-4O
Subject: Re: [Openipmi-developer] [PATCH 0/6] ipmi: Convert to platform
 remove callback returning void
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
From: Corey Minyard via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: minyard@acm.org
Cc: Benjamin Fair <benjaminfair@google.com>, linux-aspeed@lists.ozlabs.org,
 Avi Fishman <avifishman70@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>,
 openbmc@lists.ozlabs.org, Nicholas Piggin <npiggin@gmail.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Tali Perry <tali.perry1@gmail.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>, Nancy Yuen <yuenn@google.com>,
 kernel@pengutronix.de, Patrick Venture <venture@google.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 openipmi-developer@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Tomer Maimon <tmaimon77@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVGh1LCBBcHIgMTEsIDIwMjQgYXQgMDk6MTU6MDNBTSArMDIwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gSGVsbG8sCj4gCj4gT24gVHVlLCBNYXIgMDUsIDIwMjQgYXQgMDU6MjY6NTdQ
TSArMDEwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gPiB0aGlzIHNlcmllcyBjb252ZXJ0
cyBhbGwgZHJpdmVycyBiZWxvdyBkcml2ZXJzL2NoYXIvaXBtaSB0byBzdHJ1Y3QKPiA+IHBsYXRm
b3JtX2RyaXZlcjo6cmVtb3ZlX25ldygpLiBTZWUgY29tbWl0IDVjNWE3NjgwZTY3YiAoInBsYXRm
b3JtOiBQcm92aWRlIGEKPiA+IHJlbW92ZSBjYWxsYmFjayB0aGF0IHJldHVybnMgbm8gdmFsdWUi
KSBmb3IgYW4gZXh0ZW5kZWQgZXhwbGFuYXRpb24gYW5kIHRoZQo+ID4gZXZlbnR1YWwgZ29hbC4K
PiA+IAo+ID4gQWxsIGNvbnZlcnNhdGlvbnMgYXJlIHRyaXZpYWwsIGJlY2F1c2UgdGhlaXIgLnJl
bW92ZSgpIGNhbGxiYWNrcwo+ID4gcmV0dXJuZWQgemVybyB1bmNvbmRpdGlvbmFsbHkuCj4gPiAK
PiA+IFRoZXJlIGFyZSBubyBpbnRlcmRlcGVuZGVuY2llcyBiZXR3ZWVuIHRoZXNlIHBhdGNoZXMs
IHNvIHRoZXkgY291bGQgYmUKPiA+IHBpY2tlZCB1cCBpbmRpdmlkdWFsbHkuIEJ1dCBJJ2QgaG9w
ZSB0aGF0IHRoZXkgZ2V0IHBpY2tlZCB1cCBhbGwKPiA+IHRvZ2V0aGVyIGJ5IENvcmV5LgoKWWVh
aCwgSSB3YXMga2luZCBvZiB3YWl0aW5nIGZvciBtb3JlIHJldmlld3MsIGJ1dCB0aGlzIGlzIHBy
ZXR0eQpzdHJhaWdodGZvcndhcmQuICBJJ3ZlIHB1bGxlZCB0aGlzIGludG8gbXkgdHJlZS4KCi1j
b3JleQoKPiAKPiBBcGFydCBmcm9tIGEgKHBvc2l0aXZlKSByZXZpZXcgcmVwbHkgSSBkaWRuJ3Qg
Z2V0IGFueSBmZWVkYmFjayB0byB0aGlzCj4gc2VyaWVzLiBNeSBxdWVzdCB0byBjaGFuZ2UgdGhl
IHByb3RvdHlwZSBvZiBzdHJ1Y3QKPiBwbGF0Zm9ybV9kcml2ZXI6OnJlbW92ZSBkZXBlbmRzIG9u
IHRoZXNlIHBhdGNoZXMsIHNvIGl0IHdvdWxkIGJlIGdyZWF0Cj4gaWYgdGhleSBtYWRlIGl0IGlu
IGR1cmluZyB0aGUgbmV4dCBtZXJnZSB3aW5kb3cuCj4gCj4gQmVzdCByZWdhcmRzCj4gVXdlCj4g
Cj4gLS0gCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgVXdl
IEtsZWluZS1Lw7ZuaWcgICAgICAgICAgICB8Cj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMg
ICAgICAgICAgICAgICAgIHwgaHR0cHM6Ly93d3cucGVuZ3V0cm9uaXguZGUvIHwKCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1k
ZXZlbG9wZXIK
