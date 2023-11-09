Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB8A7E6B83
	for <lists+openipmi-developer@lfdr.de>; Thu,  9 Nov 2023 14:50:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1r15QX-0002j5-4u;
	Thu, 09 Nov 2023 13:50:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1r15QV-0002iy-1M
 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Nov 2023 13:50:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YlG6kGD6EMLb8S3KxxwRPku2eAYvOticFDT3c+l1ZHA=; b=bCTkj6f5xf8kNNc8az23dhXYtw
 lXgLTw5zwKxw1qzJDPrh0Z/kTUdTah7cGVHA3WbdBXvSaOn2CyqTpZ+kGfyjueNTi4vylqpd1Ctu9
 5K4BvLpql7iTBpkuTTeXAkMCG+MKZq18Bzp7DReQbFfuEoFz/F4mSQqBKJv4O+lx4sYs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YlG6kGD6EMLb8S3KxxwRPku2eAYvOticFDT3c+l1ZHA=; b=gJ5r35MUveMerjrHNi1PwOCXA3
 XttGv7oWJOHWTokA3lhtbYT/RoSjgNYs7P+BTlcbQU8vnlKeHV6JRIhRJUAeJJgky/60svXJS9ckN
 OQvTcPDdPK2VKQonPBpCAxNJH5H1Y4WJkY0zM5q+Lb9JorbAl5pbZKv2TwM/nQDSvLMU=;
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1r15QT-000tJV-Dn for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Nov 2023 13:50:30 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 46e09a7af769-6ce2b6b3cb6so490603a34.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 09 Nov 2023 05:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699537823; x=1700142623; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=YlG6kGD6EMLb8S3KxxwRPku2eAYvOticFDT3c+l1ZHA=;
 b=Ku9UCB8hjR1/yhpr59wyLd9atrnUnKRVhNACrP7Csxf06UMrb4xyevQ5UI+k08rp0P
 Pu1zGrRQcBA3lKjxGYspXPE8vLfv0dkkJUeKRNLLhpeKhmlz2WpNPyNba+1nZAGzricD
 gdbVwVfWwRecqBsObndoSiQi2bfICE28lxdtERvdw9FdjHfPq6A8oOFycbJ+6Dbnp/dt
 YxkcP7Ngx9K2vQs2L1BaVZbLOd/HlcAdOmzy6Q5WGMWnvrQForC2zgMqFw5+hqC3LuYM
 iVKLV2VlayLlzFxcxBgAtZhkdDw57RrGg0RoK1FPvvJ0/dizACXWedIKqjga2ARUCP7Z
 HjpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699537823; x=1700142623;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=YlG6kGD6EMLb8S3KxxwRPku2eAYvOticFDT3c+l1ZHA=;
 b=ODa3wet+xtSZm1/gALT9ePr29uIwpyFr2YX5zQY8n2YZwnA0Lzlxrj1AsXYw+8jdxw
 ntbMe4Xs2pRae6db5j4nJ4ZrGMEtj8kmT9cJXS8TN3IuXNDCSUcX0ws32/rf3w8V5x6o
 UeKuNDH4intBjyVkNbzjd+nn0UdpCJH+31Z56YedNghAt/6672eOw4IPCZtVwZ5gs27d
 8EsL0+8W1QTU5qKFlf40gxF5mb5YWV0UKKBXjMe/nZOvWZFmGjxklYol/fIPOUErN4Kz
 0HWn/5HSiRmog2BKYqV72xMx1lwodsGnXQOBlre6Nu39VOSoKqdGiCD9wKDBZzVsB4T+
 2+Qw==
X-Gm-Message-State: AOJu0Yw+V+BkDy0kSMnlBRjmurFoJK9rORgy9j3LDtkqYCVqFUR577bH
 zsaaExV18/8rzJEJViD/GrGrGVMQRQ==
X-Google-Smtp-Source: AGHT+IHgvT68QDu64KADv6rE9Pc5oSFkbuwhuPOAyXfDPGxJAyt2uYwF7lJwEj4GYjxNH8TRX/yW+A==
X-Received: by 2002:a05:6870:f714:b0:1e9:ae68:fda1 with SMTP id
 ej20-20020a056870f71400b001e9ae68fda1mr5055774oab.1.1699537823438; 
 Thu, 09 Nov 2023 05:50:23 -0800 (PST)
Received: from serve.minyard.net ([47.189.89.62])
 by smtp.gmail.com with ESMTPSA id
 v1-20020a056870954100b001eaf486140asm704259oal.28.2023.11.09.05.50.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Nov 2023 05:50:22 -0800 (PST)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:fad3:814:f57b:e121])
 by serve.minyard.net (Postfix) with ESMTPSA id 14047180053;
 Thu,  9 Nov 2023 13:50:22 +0000 (UTC)
Date: Thu, 9 Nov 2023 07:50:20 -0600
From: Corey Minyard <minyard@acm.org>
To: Christian Theune <ct@flyingcircus.io>
Message-ID: <ZUzjnK+EVUmHbVOE@mail.minyard.net>
References: <67d8a49d-6c6e-4543-b76e-bdf977e2f357@email.android.com>
 <E251E387-91D1-4417-AB11-38B7DE59584F@flyingcircus.io>
 <ZRrc7Eet4EKbSro6@mail.minyard.net>
 <884F85AA-E8F8-4113-A89B-DF759D2FF921@flyingcircus.io>
 <ZRujFdwLxQVVfQj7@mail.minyard.net>
 <3B168EB2-55E5-4F40-BAEC-A1861CDBE2D3@flyingcircus.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3B168EB2-55E5-4F40-BAEC-A1861CDBE2D3@flyingcircus.io>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Nov 09, 2023 at 10:14:22AM +0100, Christian Theune
 via Openipmi-developer wrote: > Hi, > > > > > On 3. Oct 2023, at 07:13, Corey
 Minyard <minyard@acm.org> wrote: > > > > Yeah, I understand how [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.49 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.49 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1r15QT-000tJV-Dn
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

T24gVGh1LCBOb3YgMDksIDIwMjMgYXQgMTA6MTQ6MjJBTSArMDEwMCwgQ2hyaXN0aWFuIFRoZXVu
ZSB2aWEgT3BlbmlwbWktZGV2ZWxvcGVyIHdyb3RlOgo+IEhpLAo+IAo+IAo+IAo+ID4gT24gMy4g
T2N0IDIwMjMsIGF0IDA3OjEzLCBDb3JleSBNaW55YXJkIDxtaW55YXJkQGFjbS5vcmc+IHdyb3Rl
Ogo+ID4gCj4gPiBZZWFoLCBJIHVuZGVyc3RhbmQgaG93IHRoaXMgd291bGQgYmUgYSBzdHJhbmdl
IHNjZW5hcmlvLiAgSSBoYXZlIHNlZW4KPiA+IHRoaXMgaGFwcGVuIGluIHRoZSByZWFsIHdvcmxk
LCBzbyBpdCBpcyBzb21ldGhpbmcgdGhhdCdzIHBvc3NpYmxlLCBidXQgSQo+ID4gdGhpbmsgdGhl
IHByaW50ayBjaGFuZ2VzIHdlbnQgaW4gYmVmb3JlIDUuMTAuCj4gPiAKPiA+IE1heWJlIGEgZmly
bXdhcmUgdXBkYXRlIHRvIHRoZSBCTUM/ICBJIHRoaW5rIHlvdSB3b3VsZCBoYXZlIG1lbnRpb25l
ZAo+ID4gdGhhdCwgdGhvdWdoLgo+IAo+IGRvIHlvdSBrbm93IGhvdyB0byByZXByb2R1Y2UgdGhp
cyBlcnJvcj8gSeKAmXZlIGRpc2FibGVkIFNPTCBsb2dnaW5nIG9uIG9uZSBvZiB0aGUgYWZmZWN0
ZWQgbWFjaGluZXMgKGl0IG1pZ2h0IGJlIHJlbGF0ZWQgdG8gdGhlIHNwZWNpZmljIEJNQyBhbmQg
SeKAmW0gY29uc2lkZXJpbmcgQk1DIGZpcm13YXJlIHVwZGF0ZXMpIGJ1dCBJ4oCZdmUgc3BhbW1l
ZCB0aGUga21zZyB0aGF0IGFyZSBzZW50IHRvIHRoZSBTT0wgZm9yIDEyKyBob3VycyBpbiBhIHRp
Z2h0IGJhc2ggbG9vcCB3aXRob3V0IGFuIFNPTCBhdHRhY2hlZCBhbmQgZGlkIG5vdCB0cmlnZ2Vy
IHRoZSBpc3N1ZeKApiAKCkkgYmVsaWV2ZSB5b3UgaGF2ZSB0byBjYWxsIHByaW50ayBmcm9tIHNv
bWUgc29ydCBvZiBhdG9taWMgY29udGV4dCwgbGlrZQphbiBpbnRlcnJ1cHQgb3Igd2l0aCBwcmVl
bXB0aW9uIGRpc2FibGVkLiAgVGhlbiwgb24gYW4gU01QIHN5c3RlbSwgaXQKd291bGQgaGF2ZSB0
byBzb21laG93IGJsb2NrIHRoZSBydW5uaW5nIG9mIHRoZSB0aHJlYWQgb2YgZXhlY3V0aW9uIHlv
dQpjYXJlIGFib3V0LgoKPiAKPiBOZXh0IHRvIHRoZSBCTUMgZmlybXdhcmUgdXBkYXRlIEnigJlt
IGFsc28gY29uc2lkZXJpbmcgc3dpdGNoaW5nIGZyb20gNS4xMCB0byA1LjE1ICh3ZeKAmXJlIGhh
dmluZyBpc3N1ZXMgaW4gNi4xIGF0IHRoZSBtb21lbnQgc28gSSBkb27igJl0IHdhbnQgdG8gZ28g
dGhlcmUgcmlnaHQgbm93KSBidXQgSeKAmWQgbG92ZSBpZiBJIGNvdWxkIGNvbnN0cnVjdCBhIHJl
cHJvZHVjZXIg4oCmIAo+IAo+IFVuZm9ydHVuYXRlbHkgdGhlIEJNQyBmaXJtd2FyZXMgZG8gbm90
IHNob3cgY2hhbmdlbG9ncyBhbmQgSeKAmW0gYSBiaXQgd2FyeSBvZiB0aGlua2luZyB0aGF0IGEg
Qk1DIGlzc3VlIHdvdWxkIGJlIHRoZSBjdWxwcml0IGhlcmUg4oCmIC1fLQoKSSdkIGFncmVlLCBp
dCBkb2Vzbid0IHJlYWxseSBzZWVtIHNvLCBhbmQgZXZlbiBpZiBpdCBpcywgaXQgZG9lc24ndApy
ZWFsbHkgbWF0dGVyLgoKPiAKPiBJIGFsc28gZGlkbuKAmXQgZmluZCB0aGUgb3JpZ2luYWwgY29t
bWl0IHRoYXQgeW91IG1lbnRpb25lZCB3b3VsZCBiZSBmaXhpbmcgaXQg4oCmIGEgaGludCBmb3Ig
d2hhdCB0byBzZWFyY2ggZm9yIGluIHRoZSBjaGFuZ2Vsb2dzIHdvdWxkIGJlIG11Y2ggYXBwcmVj
aWF0ZWQhCgpJdCdzIDA5YzViYTBhYTJmYyAicHJpbnRrOiBhZGQga3RocmVhZCBjb25zb2xlIHBy
aW50ZXJzIiBhbmQgc29tZQpvdGhlcnMuICBJdCdzIGluIDUuMTksIHNvIGl0IHdhcyBsYXRlciB0
aGFuIEkgdGhvdWdodC4KCkknbSBub3QgYmVpbmcgYSBsb3Qgb2YgaGVscCBoZXJlLCBidXQgaG9w
ZWZ1bGx5IGl0IGNhbiBsZWFkIHlvdQpzb21ld2hlcmUgeW91IGNhbiBmaWd1cmUgdGhpcyBvdXQu
ICBUaGVzZSBjYW4gYmUgaGFyZCBwcm9ibGVtcyB0bwp0cmFjayBkb3duLgoKSSBkb24ndCByZW1l
bWJlciwgaGFkIHlvdSBkb25lIGFueXRoaW5nIHdpdGggdGhlIGtlcm5lbCBwcmVlbXB0IHRyYWNp
bmc/ClRoYXQgY2FuIGJlIHVzZWZ1bCBmb3IgdHJhY2tpbmcgZG93biBsb25nIHByZWVtcHQgb2Zm
IHRpbWVzLgoKLWNvcmV5Cgo+IAo+IEtpbmQgcmVnYXJkcywKPiBDaHJpc3RpYW4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9w
ZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2
ZWxvcGVyCg==
