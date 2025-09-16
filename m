Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7717AB59BE0
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 Sep 2025 17:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FWPlkgHKbmnPJH8GlxntCqBAXsozx0HEfJ7l/mN0njw=; b=URwifd3fy1Acw+U3f3j6Z7If7d
	N6uxYyMz/jSUz5fjG3MXVSN4QqZFyrzjWN9FhlON0DVuQDmJN0NP+ME6Gu6qCBth/XbIQN3+BgFkA
	T0xjZ1zVMdD3myF6FUaBnCHKkmgeeXbMKp9la7hmkuWp0D3JuQrihgXIHPoZA91YhxBc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uyXSc-0005Tb-Bo;
	Tue, 16 Sep 2025 15:19:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uyXSZ-0005TS-UY
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 15:19:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+p7h9moPYgINE98uoLpnHKJBq2tK9bPrrVW4csykGcc=; b=QCS27EBEBbzVcGA1JT2NIdato/
 nhKF5V5NRk+i0DNkK8DLuhag0Qc7sfELHc+1WKNk2DEH4YwZjjuEa9W9zy56jASWPJkGEaGwb70+g
 xcvk8wcyuMf3b5LWQ+5mFhGY/YwC6Rhc4Va4ztwIGQkLLQwpYWIdoSMK3fg5ssQNuCG0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+p7h9moPYgINE98uoLpnHKJBq2tK9bPrrVW4csykGcc=; b=lgDPLAknbRwxHjbkwEUNFvUsp3
 yKF1HLnt02uqgCDeHhQljPcbTlZ5gXwRIfJpi6bzQatIUnB4ofG63BLnZNQsUkcEjSchTdTUmorez
 yRUMjf/3n2Y5Hd+BblRB0ZTNKn8E7imuWt7WI2fKtt7Chr3XYHaMI6mwD62PRKpw5ndU=;
Received: from mail-oo1-f45.google.com ([209.85.161.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uyXSY-0001Dp-S4 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 15:19:11 +0000
Received: by mail-oo1-f45.google.com with SMTP id
 006d021491bc7-6234b7bdf3dso736580eaf.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 16 Sep 2025 08:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1758035945; x=1758640745;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+p7h9moPYgINE98uoLpnHKJBq2tK9bPrrVW4csykGcc=;
 b=RXK8VmqvBISaKDqf4Yn7YnKQgYSBiisE3WP4jlNP5JE4jFfE+S8SGoT0F8I9mf/zD7
 jXO8j6U1fOaMbqT4o4m1dW2imHTIXMHaUGe3p5HihPcf9duOcMIkCXT/ILkXCvB98lSl
 jLvlElUAZltntwfQOQpdDYx/UEaxhOZ1RAWZq01egxcgQEbiLliNpxyxmugNWquPeBqm
 eqoLV7qAqQ59TmOc466gxq5nf6RnpLhpLsZVzQ5XKXH0yceFpFy2dAj5REVYYPqLOR2l
 oTP5EFpUM3zpKgKm63R6pvVtR6reFFszilVXyO4VYmNPRqhFnJo/oI85m9nAXPw5hLi1
 ZLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758035945; x=1758640745;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+p7h9moPYgINE98uoLpnHKJBq2tK9bPrrVW4csykGcc=;
 b=OZCGYyxomhSsHcXbBKERMaCWXZcjMuUvp8fKO8R+k8eD5UKZFPJLkC+g7ekbv9QpQ3
 jxTfkcnb5JRSmM0IgDtaq4zEeqtNtPyW4alWOpC9eNJX5x4Oo4Yz333dS+gmz1UsJRDp
 AdXI32fVHYcVCXQfe5fjaQJVkUtu4/bnzLMK5MjkZQzCiuO95MBI6c5QT1bWXBWiSh+V
 c2Wekefis7jY55+nGXBsO0q/W4oDLx/QtJt+HiI7CMNQ4y3qaDr4SAKn3eQJOWMtqAbj
 YcnQp39y0A+F7XyF2FVkWCyzb8bdrtzn3LIfq1MLSgVAHxD/Un+iYg5Ifm6GGqTLdX5G
 q8Zg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVIfOeEsqhl6aWjfXT+SNZYXaZLtQKFz8opbf86GyWj+j1z3Pdk/G9IlEko9wWViOf8CCL9l+Ngsc49LNJ+VHzy6Hw=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwmCqyk0LPcJxTPoRGlt7Ftad5Ndd8d+hTd1SBEmpwiERD6vqzS
 GcFZcKZEflxNB4JiDN0PNQrs2zTkAoZYRbDerX+1bHGR19yRjCLcqgEyLRmuBTP3+ak=
X-Gm-Gg: ASbGncvxTQKvId1DBFIKtNaI2khJITOC6edGupVH7GUWs6BojksyppOP1mCIq+meXQv
 xQDXKtmjTpeEFFoOY+WZYK/9xs7Llwgi1E1+g8TEuS0qoZvcESS2wpi+/aAB7Jx+fk7nvpEaISi
 /MIVrmthTgSdBroECQuMcRnKZZ/VW95mPg2AS1awo1tiaaRfPt6Ucv5K0sXaVcuqdLzlamEO8Ad
 9jTZ5wtmqyUUyvhQe3lGjJzLdpPmMKmnDvuF9fo4UjLF5GceMPMg9Ai0z+Tuo4nYIAsKJVz/IqC
 5tN3g7CRvqDeVwGUPTVUHa5SwQo4Gy/AIosqN4YRajUXkVTokl6iFATku2aMbeA/HEUrN1n0ngH
 6oGAzYDdFB0MPJKgeoqODb8lRkg==
X-Google-Smtp-Source: AGHT+IHukfIJqt11Qr9G8lw5Wx2j5qPkL0FBu5yNTX+Je/XHr/6y5XC+n3E6kNJrAdkc8n6REHrCgA==
X-Received: by 2002:a05:6820:1c9a:b0:61e:7bc1:3b with SMTP id
 006d021491bc7-621bedb7826mr7978820eaf.5.1758035944996; 
 Tue, 16 Sep 2025 08:19:04 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:f61d:e1de:f591:d56f])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-62341c04af0sm997167eaf.22.2025.09.16.08.19.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Sep 2025 08:19:04 -0700 (PDT)
Date: Tue, 16 Sep 2025 10:18:59 -0500
From: Corey Minyard <corey@minyard.net>
To: Binbin Zhou <zhoubb.aaron@gmail.com>
Message-ID: <aMl_47OOOotywm0U@mail.minyard.net>
References: <cover.1756987761.git.zhoubinbin@loongson.cn>
 <175760122164.1552180.16853979882678693472.b4-ty@kernel.org>
 <CAMpQs4JbQU3D-Bs2687BXSC=FKJBS6RMvWAKb6AJEtzit6hWqw@mail.gmail.com>
 <20250916084002.GF1637058@google.com>
 <CAMpQs4+J2zYgZaGYBSaf4UwzKZY-qMoD1oe2vmgJQXAfghqu=w@mail.gmail.com>
 <20250916101438.GA3585920@google.com>
 <CAMpQs4+kj0i1BpJ4Nk+Z=Ov-AMEWcqPmkbruNhD--TmycX4z-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMpQs4+kj0i1BpJ4Nk+Z=Ov-AMEWcqPmkbruNhD--TmycX4z-Q@mail.gmail.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 16, 2025 at 06:51:25PM +0800, Binbin Zhou wrote:
 > On Tue, Sep 16, 2025 at 6:14 PM Lee Jones <lee@kernel.org> wrote: > > >
 > On Tue, 16 Sep 2025, Binbin Zhou wrote: > > > > > Hi Lee: > > > [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.45 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uyXSY-0001Dp-S4
Subject: Re: [Openipmi-developer] (subset) [PATCH v11 0/3] LoongArch: Add
 Loongson-2K BMC support
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
Reply-To: corey@minyard.net
Cc: jeffbai@aosc.io, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>, Binbin Zhou <zhoubinbin@loongson.cn>,
 kexybiscuit@aosc.io, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev, wangyao@lemote.com,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBTZXAgMTYsIDIwMjUgYXQgMDY6NTE6MjVQTSArMDgwMCwgQmluYmluIFpob3Ugd3Jv
dGU6Cj4gT24gVHVlLCBTZXAgMTYsIDIwMjUgYXQgNjoxNOKAr1BNIExlZSBKb25lcyA8bGVlQGtl
cm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IE9uIFR1ZSwgMTYgU2VwIDIwMjUsIEJpbmJpbiBaaG91
IHdyb3RlOgo+ID4KPiA+ID4gSGkgTGVlOgo+ID4gPgo+ID4gPiBUaGFua3MgZm9yIHlvdXIgcmVw
bHkuCj4gPiA+Cj4gPiA+IE9uIFR1ZSwgU2VwIDE2LCAyMDI1IGF0IDQ6NDDigK9QTSBMZWUgSm9u
ZXMgPGxlZUBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IE9uIEZyaSwgMTIgU2Vw
IDIwMjUsIEJpbmJpbiBaaG91IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gPiBIaSBMZWU6Cj4gPiA+
ID4gPgo+ID4gPiA+ID4gT24gVGh1LCBTZXAgMTEsIDIwMjUgYXQgMTA6MzPigK9QTSBMZWUgSm9u
ZXMgPGxlZUBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gT24gVGh1
LCAwNCBTZXAgMjAyNSAyMDozNTowNCArMDgwMCwgQmluYmluIFpob3Ugd3JvdGU6Cj4gPiA+ID4g
PiA+ID4gVGhpcyBwYXRjaHNldCBpbnRyb2R1Y2VzIHRoZSBMb29uZ3Nvbi0ySyBCTUMuCj4gPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBJdCBpcyBhIFBDSWUgZGV2aWNlIHByZXNlbnQgb24gc2Vy
dmVycyBzaW1pbGFyIHRvIHRoZSBMb29uZ3Nvbi0zIENQVXMuCj4gPiA+ID4gPiA+ID4gQW5kIGl0
IGlzIGEgbXVsdGlmdW5jdGlvbmFsIGRldmljZSAoTUZEKSwgc3VjaCBhcyBkaXNwbGF5IGFzIGEg
c3ViLWZ1bmN0aW9uCj4gPiA+ID4gPiA+ID4gb2YgaXQuCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+
ID4gPiBGb3IgSVBNSSwgYWNjb3JkaW5nIHRvIHRoZSBleGlzdGluZyBkZXNpZ24sIHdlIHVzZSBz
b2Z0d2FyZSBzaW11bGF0aW9uIHRvCj4gPiA+ID4gPiA+ID4gaW1wbGVtZW50IHRoZSBLQ1MgaW50
ZXJmYWNlIHJlZ2lzdGVyczogU3RhdXRzL0NvbW1hbmQvRGF0YV9PdXQvRGF0YV9Jbi4KPiA+ID4g
PiA+ID4gPgo+ID4gPiA+ID4gPiA+IFsuLi5dCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEFwcGxp
ZWQsIHRoYW5rcyEKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gWzEvM10gbWZkOiBsczJrYm1jOiBJ
bnRyb2R1Y2UgTG9vbmdzb24tMksgQk1DIGNvcmUgZHJpdmVyCj4gPiA+ID4gPiA+ICAgICAgIGNv
bW1pdDogNjdjMjYzOWUxZmMxYTA3YjQ1ZDIxNmFmNjU5YzBkZDkyYTM3MGM2OAo+ID4gPiA+ID4g
PiBbMi8zXSBtZmQ6IGxzMmtibWM6IEFkZCBMb29uZ3Nvbi0ySyBCTUMgcmVzZXQgZnVuY3Rpb24g
c3VwcG9ydAo+ID4gPiA+ID4gPiAgICAgICBjb21taXQ6IDIzNjRjY2M4MjdlNDQwNjRlOTc2M2Yy
YWUyZDFkY2M1Zjk0NWZkZjMKPiA+ID4gPiA+Cj4gPiA+ID4gPiBUaGFua3MgZm9yIGFja25vd2xl
ZGdpbmcgbXkgcGF0Y2hzZXQuCj4gPiA+ID4gPgo+ID4gPiA+ID4gSSBjYW4ndCBjb25maXJtIHdo
eSB5b3UgZGlkbid0IGFwcGx5IHRoZSBJUE1JIHBhdGNoLCBidXQgdGhpcyBhcHBlYXJzCj4gPiA+
ID4gPiB0byBicmVhayB0aGUgcGF0Y2hzZXQncyBpbnRlZ3JpdHksIHBvdGVudGlhbGx5IGNhdXNp
bmcgbWlzc2luZyBLY29uZmlnCj4gPiA+ID4gPiBkZXBlbmRlbmNpZXMgKElQTUlfTFMySyBzZWxl
Y3QgTUZEX0xTMktfQk1DX0NPUkUpLgo+ID4gPiA+Cj4gPiA+ID4gUHJldHR5IHN1cmUgdGhpcyBk
b2Vzbid0IGJyZWFrIGFueXRoaW5nLgo+ID4gPiA+Cj4gPiA+ID4gV2hhdCBidWlsZCBlcnJvcnMg
ZG8geW91IHNlZSBhcyBhIHJlc3VsdD8KPiA+ID4gPgo+ID4gPiA+ID4gQWRkaXRpb25hbGx5LCBh
cyBDb3JleSBwcmV2aW91c2x5IGV4cGxhaW5lZFsxXSwgdGhpcyBwYXRjaCBjYW4gYmUKPiA+ID4g
PiA+IGFwcGxpZWQgdGhyb3VnaCB5b3VyIHNpZGUuCj4gPiA+ID4gPgo+ID4gPiA+ID4gWzFdOiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvYUZWdE5BWTR1MmdEaUxEU0BtYWlsLm1pbnlhcmQu
bmV0Lwo+ID4gPiA+Cj4gPiA+ID4gV2Ugb25seSBhcHBseSBjcm9zcy1zdWJzeXN0ZW0gcGF0Y2gt
c2V0cyB0byBhIHNpbmdsZSB0cmVlIGlmIHRoZXJlIGFyZQo+ID4gPiA+IGdvb2QgcmVhc29ucyB0
byBkbyBzby4gIEluIHRoaXMgaW5zdGFuY2UsIEkgY2FuJ3Qgc2VlIGFueSByZWFzb24gd2h5IHRo
ZQo+ID4gPiA+IElQTUkgZHJpdmVyIGNhbm5vdCBnbyBpbiB2aWEgaXQncyBvd24gcmVwby4KPiA+
ID4KPiA+ID4gSG93ZXZlciwgdGhlcmUgc3RpbGwgc2VlbXMgdG8gYmUgYSB0ZXh0IGRlcGVuZGVu
Y3kgaXNzdWUuIFRoZSBJUE1JCj4gPiA+IHBhdGNoIG1vZGlmaWVzIHRoZSBNQUlOVEFJTkVSUywg
d2hpY2ggZGVwZW5kcyBvbiB0aGUgZmlyc3QgcGF0Y2guCj4gPiA+IElmIHRoZSBlbnRpcmUgc2Vy
aWVzIG9mIHBhdGNoZXMgY2Fubm90IGJlIG1lcmdlZCB0b2dldGhlciwgZG9lcyB0aGlzCj4gPiA+
IG1lYW4gdGhlIElQTUkgcGF0Y2ggY2FuIG9ubHkgYmUgbWVyZ2VkIGFmdGVyIHRoZSBNRkQgcGF0
Y2ggaGFzIGJlZW4KPiA+ID4gbWVyZ2VkIGludG8gdGhlIG1haW5saW5lPwo+ID4KPiA+IE5vLCBu
b3QgYXQgYWxsLiAgU28gbG9uZyBhcyBhbGwgcGF0Y2hlcyBjb21lIHRvZ2V0aGVyIGR1cmluZyB0
aGUKPiA+IG1lcmdlLXdpbmRvdywgdGhlcmUgaXMgbm8gaXNzdWUuCj4gCj4gT0ssIEkgc2VlLCB0
aGFua3MuCj4gCj4gSGkgQ29yZXk6Cj4gCj4gV2hhdCBkbyB5b3UgdGhpbmsgYWJvdXQgaXQ/CgpJ
IHRob3VnaHQgbXkgYWNrIHdvdWxkIGJlIHN1ZmZpY2llbnQsIGJ1dCBJJ3ZlIHB1bGxlZCB0aGlz
IGludG8gbXkgdHJlZS4KSSBjYW4ndCBhcHBseSB0aGUgTUFJTlRBSU5FUlMgcG9ydGlvbiBvZiB0
aGlzLCBidXQgdGhhdCBjYW4gZ28gaW4KbGF0ZXI7IHlvdSBjYW4gc2VuZCBtZSBhIHBhdGNoIGZv
ciB0aGF0IGFmdGVyIHRoZSBuZXh0IGtlcm5lbCByZWxlYXNlLgoKSSdsbCBtYWtlIGEgbm90ZSB0
byBMaW51cyB0aGF0IHRoaXMgZGVwZW5kcyBvbiB0aGUgTUZEIGNoYW5nZXMuCgotY29yZXkKCj4g
Cj4gPgo+ID4gLS0KPiA+IExlZSBKb25lcyBb5p2O55C85pavXQo+IAo+IC0tIAo+IFRoYW5rcy4K
PiBCaW5iaW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
