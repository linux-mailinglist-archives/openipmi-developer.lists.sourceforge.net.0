Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCF5B81313
	for <lists+openipmi-developer@lfdr.de>; Wed, 17 Sep 2025 19:35:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/IEo+EA7BQZcMAsd3KyyCw1Aj9D7o6Rp2ULpXC9dSR4=; b=S1Cj9zxi+q2JRhkIIouMiob2cE
	+REW6ALG1SD7WumEWZtKonOqkpWWCAKtdSjlb4cLFH5r5wz0KTnOanOgQIE/RVIRTJkbiYLP2ffJK
	/0s5qY3dK3qPeD28MCi3/miBI1mfp9DliTf6nm8SYpHfzQoomJXX+g/SDvsJAgC2P5XM=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uyeyN-0004Cp-2L;
	Tue, 16 Sep 2025 23:20:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uyeyL-0004Ci-Hn
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 23:20:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wrEMNHKwYr/02yPBL8fxjj+3KhJzD85mECDAPLYkhT0=; b=HcfGxObUvjSMnrfLfjZfbFMOoK
 SY4r53lIZBXz40xE7oFVZjli0Y7mwL7kbZCVh7OwFv2TqXHSdSSXf9IgLxPX7pPfeqJTg8dejRDYJ
 m6e4jz2sVLi7QHCIpyxLVAgn61AdjgdGRo3we2n5nxBnQGoAZ07TXvl+SwqXB/3uKFFs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wrEMNHKwYr/02yPBL8fxjj+3KhJzD85mECDAPLYkhT0=; b=gkkgWyQS9OiQPd/RPt4vAks4Ya
 UlgDh1D7ZTj3NIAQzOXXi/fu1LcgUmd4TNNWaz6IPw0n8gaYn6bfV5tbxZcGJLPP3wbCO5N7i3qzX
 INZcvCO4PtV8/VFerF7UspOiYVc0OaPZ3bk4UKEUrIPQ37WABBderShMaXJ3O8uFMfd8=;
Received: from mail-oa1-f42.google.com ([209.85.160.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uyeyK-0002TF-88 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 23:20:28 +0000
Received: by mail-oa1-f42.google.com with SMTP id
 586e51a60fabf-30cce8c3afaso4285497fac.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 16 Sep 2025 16:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1758064817; x=1758669617;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wrEMNHKwYr/02yPBL8fxjj+3KhJzD85mECDAPLYkhT0=;
 b=2kFLa8IJV28TyH/6SlTkN988BBEl2OqhOa/GQlwqx6XMcSjLJylst8VTu0Qlopxfrh
 MSrS6jnjNpK4S+qDt0SlfeotQVv5OJ6k9MErb7vNfTBaXDs5eKJXpvY0HtY6YMj4Wm6h
 wsoRICReWEM3S/f9AV05kiHuGWuWh48DK2ILIbkdn+nXhepwuyumf8BTtH9cmFbDFYef
 IeGTR8HVm6O3IEpHAm/DnY9y4hFLu2Q3cb6CCAUaYHJuWvfcZabsoHUMMXStMiJWhP/5
 uYa/myEcZNZ9cj4UZTgwD+97iwcrADwVj5t+abSadEGGB74Md+m0PoLCcJsPtSmTbEay
 JY3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758064817; x=1758669617;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wrEMNHKwYr/02yPBL8fxjj+3KhJzD85mECDAPLYkhT0=;
 b=aNDxvNa/7yXsKQcGmmET5O2UXho4k+JgtQKsAYRS+Spd3TwU0tD38BPYF/gjzzYSJg
 1LGNxw+z6Koni6navHrPCOL5kkeFnoeSehzIIPwY++pWsgp88v1BuGtYjL48TqSHCOkR
 7Uu6hroj0ZrUmSY4kOJLL0l+WurIuJHx901B68aTuvG6Fimw9ZLJrHwlIosgkGsukz3M
 zvnd46dvBdUJB1QHclqZ+GKbOj5gWE4/GaZina1suXw+u8Dr6RrtzrP2oROamM9V77JV
 OES5kbFxCXx43HyIifQDWtDZr1Lwy2yAGPq49zuRGorou5nA/hKuHwZuJcVa966LQVTU
 JyKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW5CBFI/lAu3ZCIa2B1R0hksl8j/bci9mQef4QpoAbnIlzHHNilZ5rseKfX2mnYJWN56BHf0PKdd4FE5fCpaMu8ESY=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxlP0rNOsX7mNwTWD+tFHCLq9KGKdCu2xBJageLCdkBrCYlXFQT
 jxkZ7j8bRSfIfdrdTufZlBadw6N72s1mWsqNmbcLNoyXPSM1NvMzj9SDoId6rz5CEc4=
X-Gm-Gg: ASbGncvYUfrRqFMrlC/AWQPyC+x5nv3JFrV1eXzqPB+1rbI1Yz4qfThKroV1DCHHgSV
 YkR5QSz0kMgXb4J8cpHRUz98YB4PMQtrV/Wu9s+3SqIEPHg0ULAHpbDos5bDTmWUCPIV4x/Xglq
 UBS5xZNsLlpjxcw5npBU5da83hCEOir1xPv4Xjlmo4ySqSQ6QezNOsXSqmY2tqzB1q0frUkFSJv
 4xjhCaahEjRlQFz22kQslnZ6tFHEKqHqGK3M/WtKfId1mnleTz0i+oK7GKmNgo2tc8pvk138pgs
 H2ESeS0nrc9Gf5DB/0dRys9RShQNDKuVmF10/lDdaryRR3gnP8ghIJ7TyV7aIKUufJKHPZRVpVS
 h5pP+4JStoBMG/TH7eGxM6HTlVO9NslLKccU=
X-Google-Smtp-Source: AGHT+IHFZz1ctDlZZkhP4iHGu+C0RukwNgJ0/Rqt2jFZKAtmZEiMKO57mZJI7ViSusQ/kdwk5QrNDA==
X-Received: by 2002:a05:6871:5809:b0:31d:8c1f:410 with SMTP id
 586e51a60fabf-335c066873dmr91436fac.48.1758064817432; 
 Tue, 16 Sep 2025 16:20:17 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:d2d4:a69:5fcd:4e2d])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-32d35380409sm5268258fac.18.2025.09.16.16.20.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Sep 2025 16:20:16 -0700 (PDT)
Date: Tue, 16 Sep 2025 18:20:11 -0500
From: Corey Minyard <corey@minyard.net>
To: Lee Jones <lee@kernel.org>
Message-ID: <aMnwq3i0qMREnjI7@mail.minyard.net>
References: <cover.1756987761.git.zhoubinbin@loongson.cn>
 <175760122164.1552180.16853979882678693472.b4-ty@kernel.org>
 <CAMpQs4JbQU3D-Bs2687BXSC=FKJBS6RMvWAKb6AJEtzit6hWqw@mail.gmail.com>
 <20250916084002.GF1637058@google.com>
 <CAMpQs4+J2zYgZaGYBSaf4UwzKZY-qMoD1oe2vmgJQXAfghqu=w@mail.gmail.com>
 <20250916101438.GA3585920@google.com>
 <CAMpQs4+kj0i1BpJ4Nk+Z=Ov-AMEWcqPmkbruNhD--TmycX4z-Q@mail.gmail.com>
 <aMl_47OOOotywm0U@mail.minyard.net>
 <20250916160845.GB3893363@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250916160845.GB3893363@google.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 16, 2025 at 05:08:45PM +0100, Lee Jones wrote:
 > On Tue, 16 Sep 2025, Corey Minyard wrote: > > > On Tue, Sep 16, 2025 at
 06:51:25PM +0800, Binbin Zhou wrote: > > > On Tue, Sep 16, 2025 at [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.42 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uyeyK-0002TF-88
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
Cc: jeffbai@aosc.io, Corey Minyard <minyard@acm.org>,
 Binbin Zhou <zhoubinbin@loongson.cn>, kexybiscuit@aosc.io,
 Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev, wangyao@lemote.com,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBTZXAgMTYsIDIwMjUgYXQgMDU6MDg6NDVQTSArMDEwMCwgTGVlIEpvbmVzIHdyb3Rl
Ogo+IE9uIFR1ZSwgMTYgU2VwIDIwMjUsIENvcmV5IE1pbnlhcmQgd3JvdGU6Cj4gCj4gPiBPbiBU
dWUsIFNlcCAxNiwgMjAyNSBhdCAwNjo1MToyNVBNICswODAwLCBCaW5iaW4gWmhvdSB3cm90ZToK
PiA+ID4gT24gVHVlLCBTZXAgMTYsIDIwMjUgYXQgNjoxNOKAr1BNIExlZSBKb25lcyA8bGVlQGtl
cm5lbC5vcmc+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gVHVlLCAxNiBTZXAgMjAyNSwgQmlu
YmluIFpob3Ugd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiA+IEhpIExlZToKPiA+ID4gPiA+Cj4gPiA+
ID4gPiBUaGFua3MgZm9yIHlvdXIgcmVwbHkuCj4gPiA+ID4gPgo+ID4gPiA+ID4gT24gVHVlLCBT
ZXAgMTYsIDIwMjUgYXQgNDo0MOKAr1BNIExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+IHdyb3Rl
Ogo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBPbiBGcmksIDEyIFNlcCAyMDI1LCBCaW5iaW4gWmhv
dSB3cm90ZToKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBIaSBMZWU6Cj4gPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gPiBPbiBUaHUsIFNlcCAxMSwgMjAyNSBhdCAxMDozM+KAr1BNIExlZSBKb25l
cyA8bGVlQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+
IE9uIFRodSwgMDQgU2VwIDIwMjUgMjA6MzU6MDQgKzA4MDAsIEJpbmJpbiBaaG91IHdyb3RlOgo+
ID4gPiA+ID4gPiA+ID4gPiBUaGlzIHBhdGNoc2V0IGludHJvZHVjZXMgdGhlIExvb25nc29uLTJL
IEJNQy4KPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gSXQgaXMgYSBQQ0llIGRl
dmljZSBwcmVzZW50IG9uIHNlcnZlcnMgc2ltaWxhciB0byB0aGUgTG9vbmdzb24tMyBDUFVzLgo+
ID4gPiA+ID4gPiA+ID4gPiBBbmQgaXQgaXMgYSBtdWx0aWZ1bmN0aW9uYWwgZGV2aWNlIChNRkQp
LCBzdWNoIGFzIGRpc3BsYXkgYXMgYSBzdWItZnVuY3Rpb24KPiA+ID4gPiA+ID4gPiA+ID4gb2Yg
aXQuCj4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+IEZvciBJUE1JLCBhY2NvcmRp
bmcgdG8gdGhlIGV4aXN0aW5nIGRlc2lnbiwgd2UgdXNlIHNvZnR3YXJlIHNpbXVsYXRpb24gdG8K
PiA+ID4gPiA+ID4gPiA+ID4gaW1wbGVtZW50IHRoZSBLQ1MgaW50ZXJmYWNlIHJlZ2lzdGVyczog
U3RhdXRzL0NvbW1hbmQvRGF0YV9PdXQvRGF0YV9Jbi4KPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gPiA+ID4gWy4uLl0KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBBcHBsaWVk
LCB0aGFua3MhCj4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gWzEvM10gbWZkOiBsczJr
Ym1jOiBJbnRyb2R1Y2UgTG9vbmdzb24tMksgQk1DIGNvcmUgZHJpdmVyCj4gPiA+ID4gPiA+ID4g
PiAgICAgICBjb21taXQ6IDY3YzI2MzllMWZjMWEwN2I0NWQyMTZhZjY1OWMwZGQ5MmEzNzBjNjgK
PiA+ID4gPiA+ID4gPiA+IFsyLzNdIG1mZDogbHMya2JtYzogQWRkIExvb25nc29uLTJLIEJNQyBy
ZXNldCBmdW5jdGlvbiBzdXBwb3J0Cj4gPiA+ID4gPiA+ID4gPiAgICAgICBjb21taXQ6IDIzNjRj
Y2M4MjdlNDQwNjRlOTc2M2YyYWUyZDFkY2M1Zjk0NWZkZjMKPiA+ID4gPiA+ID4gPgo+ID4gPiA+
ID4gPiA+IFRoYW5rcyBmb3IgYWNrbm93bGVkZ2luZyBteSBwYXRjaHNldC4KPiA+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiA+IEkgY2FuJ3QgY29uZmlybSB3aHkgeW91IGRpZG4ndCBhcHBseSB0aGUg
SVBNSSBwYXRjaCwgYnV0IHRoaXMgYXBwZWFycwo+ID4gPiA+ID4gPiA+IHRvIGJyZWFrIHRoZSBw
YXRjaHNldCdzIGludGVncml0eSwgcG90ZW50aWFsbHkgY2F1c2luZyBtaXNzaW5nIEtjb25maWcK
PiA+ID4gPiA+ID4gPiBkZXBlbmRlbmNpZXMgKElQTUlfTFMySyBzZWxlY3QgTUZEX0xTMktfQk1D
X0NPUkUpLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBQcmV0dHkgc3VyZSB0aGlzIGRvZXNuJ3Qg
YnJlYWsgYW55dGhpbmcuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFdoYXQgYnVpbGQgZXJyb3Jz
IGRvIHlvdSBzZWUgYXMgYSByZXN1bHQ/Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gQWRkaXRp
b25hbGx5LCBhcyBDb3JleSBwcmV2aW91c2x5IGV4cGxhaW5lZFsxXSwgdGhpcyBwYXRjaCBjYW4g
YmUKPiA+ID4gPiA+ID4gPiBhcHBsaWVkIHRocm91Z2ggeW91ciBzaWRlLgo+ID4gPiA+ID4gPiA+
Cj4gPiA+ID4gPiA+ID4gWzFdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvYUZWdE5BWTR1
MmdEaUxEU0BtYWlsLm1pbnlhcmQubmV0Lwo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBXZSBvbmx5
IGFwcGx5IGNyb3NzLXN1YnN5c3RlbSBwYXRjaC1zZXRzIHRvIGEgc2luZ2xlIHRyZWUgaWYgdGhl
cmUgYXJlCj4gPiA+ID4gPiA+IGdvb2QgcmVhc29ucyB0byBkbyBzby4gIEluIHRoaXMgaW5zdGFu
Y2UsIEkgY2FuJ3Qgc2VlIGFueSByZWFzb24gd2h5IHRoZQo+ID4gPiA+ID4gPiBJUE1JIGRyaXZl
ciBjYW5ub3QgZ28gaW4gdmlhIGl0J3Mgb3duIHJlcG8uCj4gPiA+ID4gPgo+ID4gPiA+ID4gSG93
ZXZlciwgdGhlcmUgc3RpbGwgc2VlbXMgdG8gYmUgYSB0ZXh0IGRlcGVuZGVuY3kgaXNzdWUuIFRo
ZSBJUE1JCj4gPiA+ID4gPiBwYXRjaCBtb2RpZmllcyB0aGUgTUFJTlRBSU5FUlMsIHdoaWNoIGRl
cGVuZHMgb24gdGhlIGZpcnN0IHBhdGNoLgo+ID4gPiA+ID4gSWYgdGhlIGVudGlyZSBzZXJpZXMg
b2YgcGF0Y2hlcyBjYW5ub3QgYmUgbWVyZ2VkIHRvZ2V0aGVyLCBkb2VzIHRoaXMKPiA+ID4gPiA+
IG1lYW4gdGhlIElQTUkgcGF0Y2ggY2FuIG9ubHkgYmUgbWVyZ2VkIGFmdGVyIHRoZSBNRkQgcGF0
Y2ggaGFzIGJlZW4KPiA+ID4gPiA+IG1lcmdlZCBpbnRvIHRoZSBtYWlubGluZT8KPiA+ID4gPgo+
ID4gPiA+IE5vLCBub3QgYXQgYWxsLiAgU28gbG9uZyBhcyBhbGwgcGF0Y2hlcyBjb21lIHRvZ2V0
aGVyIGR1cmluZyB0aGUKPiA+ID4gPiBtZXJnZS13aW5kb3csIHRoZXJlIGlzIG5vIGlzc3VlLgo+
ID4gPiAKPiA+ID4gT0ssIEkgc2VlLCB0aGFua3MuCj4gPiA+IAo+ID4gPiBIaSBDb3JleToKPiA+
ID4gCj4gPiA+IFdoYXQgZG8geW91IHRoaW5rIGFib3V0IGl0Pwo+ID4gCj4gPiBJIHRob3VnaHQg
bXkgYWNrIHdvdWxkIGJlIHN1ZmZpY2llbnQsIGJ1dCBJJ3ZlIHB1bGxlZCB0aGlzIGludG8gbXkg
dHJlZS4KPiA+IEkgY2FuJ3QgYXBwbHkgdGhlIE1BSU5UQUlORVJTIHBvcnRpb24gb2YgdGhpcywg
YnV0IHRoYXQgY2FuIGdvIGluCj4gPiBsYXRlcjsgeW91IGNhbiBzZW5kIG1lIGEgcGF0Y2ggZm9y
IHRoYXQgYWZ0ZXIgdGhlIG5leHQga2VybmVsIHJlbGVhc2UuCj4gPiAKPiA+IEknbGwgbWFrZSBh
IG5vdGUgdG8gTGludXMgdGhhdCB0aGlzIGRlcGVuZHMgb24gdGhlIE1GRCBjaGFuZ2VzLgo+IAo+
IEZlZWwgZnJlZSB0byBzZXBhcmF0ZSB0aGF0IGZyb20gdGhhdCBwYXRjaCBhbmQgSSdsbCBoYXBw
aWx5IGFwcGx5IGl0LgoKVGhhdCdzIGdyZWF0LCBwbGVhc2UgZG8uICBJdCdzIGFscmVhZHkgc2Vw
YXJhdGVkIG91dCwgYW5kIHRoZSByZXN0CmlzIGluIHRoZSBuZXh0IHRyZWUuCgpUaGFua3MsCgot
Y29yZXkKCj4gCj4gLS0gCj4gTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
