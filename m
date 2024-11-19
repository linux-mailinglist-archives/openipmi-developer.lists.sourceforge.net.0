Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B079D1D8F
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 Nov 2024 02:48:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tDDLg-00057J-7g;
	Tue, 19 Nov 2024 01:48:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <potin.lai.pt@gmail.com>) id 1tDDLf-00057B-40
 for openipmi-developer@lists.sourceforge.net;
 Tue, 19 Nov 2024 01:48:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c0Jo/KKBcPffbGmgIdsyD8pOkohSJSpZck1cIdtrRTs=; b=hBbtlug3pL4FC/U7mOF3oJ/FFS
 TxxddeI/34KbFEjwLF0P1zylCw79h1r1bAqAgaSwB4mqZ2omLaffHFPG+SxZ/avq7Dpx6WIMM1Do6
 JkUiZVTeDdzjFSvbnDkbwMhvyRV/ojypKm81/P4Q71PfjUQVfv3f1WmRBPkVLmFgFTcE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c0Jo/KKBcPffbGmgIdsyD8pOkohSJSpZck1cIdtrRTs=; b=mvmlH7Oreo8Gw8vTP1nDrna9EF
 RzABW1jMlJy1pQcZ8xec8kaLM/HQN4TEJmQPQ2q1imD4/vN1yRlkwZF0safgNWT2xrKvbdcHi02Xk
 3rvnr58gjvR6R+E2R1JLCGfLbJFqG8wN6UV/KvZvwNYZPg2DOghHzFWFZWOQooMcopN8=;
Received: from mail-ej1-f52.google.com ([209.85.218.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tDDLe-0007yE-HI for openipmi-developer@lists.sourceforge.net;
 Tue, 19 Nov 2024 01:48:11 +0000
Received: by mail-ej1-f52.google.com with SMTP id
 a640c23a62f3a-a9f1c590ecdso664038166b.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 18 Nov 2024 17:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731980879; x=1732585679; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=c0Jo/KKBcPffbGmgIdsyD8pOkohSJSpZck1cIdtrRTs=;
 b=g9Bcpl64WPAW6JSf8wNjVsCnnULkywJRLj9o4dH0QX+Egfv6PtPJ5JUXgNGGU1uVQe
 aDs97kqQhCn4OA7EayW1zhom34ue5s8DxPOUi7CJ72ZZUYdfQdLG5aZgAPboMICq9JKW
 3ljld89ggr+98ehnT8KEdPL+ZvcZgfVGGh9AP8JfhtvtzrfybnCQLA/of851NTFk1o20
 81NdaiJ/2Jdl8DX1JGAQku346iQtBOaDXEqXaL8NBF+W1MGFd+dxio5q4Fzf8Z/il3B6
 4Np/xIDMDdrFG3MjFWa27pwaRzJXgHtmhgDyqawpGOLbyhhUhA7jkVnRNZUGjx1mw6qi
 Sacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731980879; x=1732585679;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=c0Jo/KKBcPffbGmgIdsyD8pOkohSJSpZck1cIdtrRTs=;
 b=V/naRqG54ze+wii3McPx1dRSnXtGyRN0Zx0JtBsU1kxGWufY83EtP3RpcEDXATsZWE
 QqyP+DzothNjHfwipOEgsb+79v27DK5nSBOokKFHzzFTy5vgxlWFVy6Qm8zZVu39gx01
 RHIOwV4FYq2HK5FSNDkt1M0wNzEieg7STdXQRq7Q18uFTTXE/8lRvi9k2gLTaXM7Z5Jb
 jtGPEZEJMa0J2GbuE8gExK5kU4tlMgsJ7x831wGHRfGjQPHAXkKAFIHpy9rBswozolBn
 nWZwgezIFhtLBzw0QGV4KHozOYYmdvUdkzH7HOsEoRZ1JMwvG8+aCLMHpMq//+ZTbDWg
 q5PQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUNua3caY7kj0/24LQgy7ee/96y/MhDR0V/QTJnOdZH2ho2C2aE65uNu0p6DyDIVVzigWeT59qKYGYBifsmE1/4t8U=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxfIgFRe8IFEbAU1C5QJiGz0esYfbWFt5Y+MnDWNU2LlaGMGD59
 lF5zMEQGAe3AYX1VsHZccoRi5B9fg5TK8NCJ2dky/KP8p5JpxHN2i0SyHbAddIZgMI5Oot/uv61
 vYIn2HZSuqemMBtx4j45Lq7I7Oso=
X-Google-Smtp-Source: AGHT+IE8gBfJzkyFGKkxy2q1jEDdV9oHCgOI5STCd2ZM9i3LxvLIsbyX+gXcPK25+06SDNGcaNi725XTI8R8fxIJd28=
X-Received: by 2002:a17:906:daca:b0:a9e:c947:d5e5 with SMTP id
 a640c23a62f3a-aa48347618amr1308741266b.28.1731980878781; Mon, 18 Nov 2024
 17:47:58 -0800 (PST)
MIME-Version: 1.0
References: <20241022-ssif-alert-gpios-v2-0-c7dd6dd17a7e@gmail.com>
 <20241022-ssif-alert-gpios-v2-2-c7dd6dd17a7e@gmail.com>
 <434333fb-5703-449e-83f2-46e85f34fd23@os.amperecomputing.com>
In-Reply-To: <434333fb-5703-449e-83f2-46e85f34fd23@os.amperecomputing.com>
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Tue, 19 Nov 2024 09:47:47 +0800
Message-ID: <CAGfYmwXotiDHCJJod0Q-SjC9GyuCFFhO+qj9SXCQFud5JgFHSA@mail.gmail.com>
To: Quan Nguyen <quan@os.amperecomputing.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Oct 24, 2024 at 12:29 PM Quan Nguyen wrote: > >
   > > On 22/10/2024 08:20, Potin Lai wrote: > > From: Cosmo Chou > > > > Implement
    GPIO-based alert mechanism in the SSIF BMC driver to noti [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [209.85.218.52 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.218.52 listed in bl.score.senderscore.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [potin.lai.pt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.218.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.218.52 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tDDLe-0007yE-HI
Subject: Re: [Openipmi-developer] [PATCH v2 2/2] ipmi: ssif_bmc: add
 GPIO-based alert mechanism
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Corey Minyard <minyard@acm.org>, devicetree@vger.kernel.org,
 Cosmo Chou <chou.cosmo@gmail.com>, Potin Lai <potin.lai@quantatw.com>,
 linux-kernel@vger.kernel.org, Patrick Williams <patrick@stwcx.xyz>,
 Cosmo Chou <cosmo.chou@quantatw.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVGh1LCBPY3QgMjQsIDIwMjQgYXQgMTI6MjnigK9QTSBRdWFuIE5ndXllbgo8cXVhbkBvcy5h
bXBlcmVjb21wdXRpbmcuY29tPiB3cm90ZToKPgo+Cj4KPiBPbiAyMi8xMC8yMDI0IDA4OjIwLCBQ
b3RpbiBMYWkgd3JvdGU6Cj4gPiBGcm9tOiBDb3NtbyBDaG91IDxjaG91LmNvc21vQGdtYWlsLmNv
bT4KPiA+Cj4gPiBJbXBsZW1lbnQgR1BJTy1iYXNlZCBhbGVydCBtZWNoYW5pc20gaW4gdGhlIFNT
SUYgQk1DIGRyaXZlciB0byBub3RpZnkKPiA+IHRoZSBob3N0IHdoZW4gYSByZXNwb25zZSBpcyBy
ZWFkeS4KPiA+Cj4gPiBUaGlzIGltcHJvdmVzIGhvc3QtQk1DIGNvbW11bmljYXRpb24gZWZmaWNp
ZW5jeSBieSBwcm92aWRpbmcgaW1tZWRpYXRlCj4gPiBub3RpZmljYXRpb24sIHBvdGVudGlhbGx5
IHJlZHVjaW5nIGhvc3QgcG9sbGluZyBvdmVyaGVhZC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBD
b3NtbyBDaG91IDxjaG91LmNvc21vQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2No
YXIvaXBtaS9zc2lmX2JtYy5jIHwgMTUgKysrKysrKysrKysrKysrCj4gPiAgIDEgZmlsZSBjaGFu
Z2VkLCAxNSBpbnNlcnRpb25zKCspCj4gPgo+Cj4gVGhhbmtzIGZvciBhZGRpbmcgZmVhdHVyZSB0
byB0aGlzIGRyaXZlciwgdGhlIGNvZGUgbG9va3MgZ29vZCB0byBtZS4KPgo+IFJldmlld2VkLWJ5
OiBRdWFuIE5ndXllbiA8cXVhbkBvcy5hbXBlcmVjb21wdXRpbmcuY29tPgo+Cj4gSSdtIGp1c3Qg
aGF2ZSBhIGJpdCBvZiBjdXJpb3VzIG9uIGhvdyB0aGUgaXBtaV9zc2lmIGluIGhvc3Qgc2lkZSB0
byB3b3JrCj4gd2l0aCB0aGlzIG1lY2hhbmlzbT8gV2lsbCB0aGVyZSBiZSBwYXRjaGVzIGZvciBp
cG1pX3NzaWYgdG8gdXNlIHRoaXMKPiBmZWF0dXJlIGZvbGxvd2VkPwo+Cj4gVGhhbmtzIGFuZCBC
ZXN0IHJlZ2FyZHMsCj4gLSBRdWFuCgpIaSBRdWFuLAoKU29ycnkgZm9yIHRoZSBsYXRlIHJlcGx5
LgpUaGlzIGltcGxlbWVudGF0aW9uIGlzIG9ubHkgdGVzdGVkIHdpdGggb3VyIEJJT1MgdGVhbSwg
YW5kIHRoZXkgYXJlCm5vdCB1c2luZyBsaW51eCBkcml2ZXIgZm9yIHNzaWYgZmVhdHVyZS4KQXQg
bW9tZW50LCB3ZSBkb24ndCBoYXZlIHBsYW4gdG8gYWRkIGNoYW5nZXMgaW4gaXBtaV9zc2lmLgoK
VGhhbmtzLApQb3RpbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
