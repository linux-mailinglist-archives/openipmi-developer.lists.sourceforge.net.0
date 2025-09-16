Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A33AB59450
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 Sep 2025 12:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I2XN3j3kN/dtU0eW/5499QZqif/FLWGnN/dN8lpJZV4=; b=GeVDxeswHsJz7exES6Jdg8q0s7
	ny84CEMP3ImL6sjjKCRfAtind9mqq+hyi0bjB8BeHMt5GwIJ9sXlJzCELK1TMFoEU7ioNwh6QT7fU
	r7VenYnC6fq8cEll4nmrZmxEsuGiuwDADYs6CCMGbeK+Oj5kjqtGLCUQF3QJhKY2xshA=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uyTHm-0000IR-FJ;
	Tue, 16 Sep 2025 10:51:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubb.aaron@gmail.com>) id 1uyTHl-0000IF-4G
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 10:51:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OObpzBjFF7yMnSbls/d6bSlMk0bpjxblQhgbD3Wv4xQ=; b=CwUx2/ZXtX5XGJsT476LLg5PGC
 QKg6SYwONH0HYYnp+g02722Y7+ViNHr10HvSWJFmC2x8Qs6gaTxRkcuwW6sEVdCEZzQlZvl02rEtJ
 YFDa1EsSbdRp/dZP8P4BhEIciP/nuOYjqSn90L3sF4NgctTv0LvtzXcG2gfzlLKWzfBE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OObpzBjFF7yMnSbls/d6bSlMk0bpjxblQhgbD3Wv4xQ=; b=ivTQweXPgfZarEfMddTCo8NvsO
 tZrCLnoZ1bkshwB0ZFXUzYJcL2/P2zAnKya/PmULiHan+5ybNGnlamC2Sa/emlDPzyQxMw88/cSd/
 BqOivgihnKdPBHc+DHVGMAnFU85Lj++eLoDK/JBv90QCMIE5cHrAayvV0KKUf6SSZxDM=;
Received: from mail-ed1-f50.google.com ([209.85.208.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uyTHl-0008IY-Ec for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 10:51:45 +0000
Received: by mail-ed1-f50.google.com with SMTP id
 4fb4d7f45d1cf-62f1987d53aso3337261a12.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 16 Sep 2025 03:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758019899; x=1758624699; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OObpzBjFF7yMnSbls/d6bSlMk0bpjxblQhgbD3Wv4xQ=;
 b=niiWwP5MjF1GuiOCwu1uIsLd+olUGks9frpnAt+JpcszOqnqw2IR+xHgE9vsDBR0Oh
 9oFDrbZXEXPD5lSeb/k865EXsaB9p66kmrV8vBJrZobx3XQ0G+SA0Ajidyyotx7w5wkT
 MLUazPZvtHYTqLWW59Y1s5duU73wTgdzPwOvxlxFxNNrGORx6/0P1Ukio04X5LJd3yXX
 809dwZ1mXDCpJCMUXKS2RV8OInmc1ey3X8HPLMCfheoWksq7o7kPmgnoRJCOzk/Gr4aE
 mTlHhoxzIAect9dWlz6uydNhzqyWQD54xsCFTZfEzY+vsFxAQOuJYwQFfKW5VpTUXF3s
 rxRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758019899; x=1758624699;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OObpzBjFF7yMnSbls/d6bSlMk0bpjxblQhgbD3Wv4xQ=;
 b=HaTkF9A9EqPrdJ0fqRNY5Y6nRK2fQ325SbqlIZNTkBNcHGhfLYj4P7w+DLt/v964nF
 7Gqc2EMjnvn3BrGD1oY2u7z9asnO+GLi1YWsHn476E174Y9l/10BbrF51eBZHEse3DL0
 FRtuuprNG2Ul6/ix2DrWV6TXq5gF1bWIDufNYcLz6e1XfuNbKiCPMZA/Bvu85YFyBb8r
 b2/0g2lf9/o5z/BZ6He2BCAULrUhPH2Cs+AWBMTWGGp/Yf2uwae55cRJGV8PzNAQsm1D
 iwOW8zh90TmX3PrRmtT0yMGcazx/a9qdt4rPMqjaW/gZ1kEF7ixtHtNkpBiNnoqf3Nn/
 mCjw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV7i4Tr2ZP2oyMc7BSf4VcwZ8jpGq66uhqvZFnVOLNSkUR0EjOBTm4Ueh9PfrYB81530cJRzKrLj6/JW89OKs8TnFM=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwdbrUPk3/JEWfINcdEyp3C6W52fKVd12ZLDwKyCDncJsLMa93g
 qI20VNmWtCGATBVdcywy4KwPW1aoHvQPDD8ONKMOy5gyAzIKy6PROSSJejQXArLA/jA3l7sGhVV
 /1pmuGNU7EGmJf7hYtTJfYDweX34ape4=
X-Gm-Gg: ASbGncvZSDozJy3PR5PgZ/pPt/4JbPsXjNe3KrPU6rtixfLf+oiOMvz9flg6vXLoLAR
 CLY+eUw9LrvJd25Prq4UVGVFonZ5r9AFllVKh6a6DeHR7TLO2zOUeSzgFHcfVM69jZO6+zDz7qr
 11RY/QRvPtVObC2KspR7o1QAkygIyaUTw/eQQ5fmgUtEVypisLx0zxsmpy7cKSqifGfgpJ6+0NI
 xMzEEHWr804ccALew==
X-Google-Smtp-Source: AGHT+IH6HVcq8RFIaQkQFA17EoE6YWoCKD+1h9ynJNaDikwRoq31OLQVBiURDJCjf116z9WR/3PQypnzBaYuEhoS4l0=
X-Received: by 2002:a05:6402:2802:b0:627:6281:e441 with SMTP id
 4fb4d7f45d1cf-62ed8278bfemr15882478a12.23.1758019898611; Tue, 16 Sep 2025
 03:51:38 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1756987761.git.zhoubinbin@loongson.cn>
 <175760122164.1552180.16853979882678693472.b4-ty@kernel.org>
 <CAMpQs4JbQU3D-Bs2687BXSC=FKJBS6RMvWAKb6AJEtzit6hWqw@mail.gmail.com>
 <20250916084002.GF1637058@google.com>
 <CAMpQs4+J2zYgZaGYBSaf4UwzKZY-qMoD1oe2vmgJQXAfghqu=w@mail.gmail.com>
 <20250916101438.GA3585920@google.com>
In-Reply-To: <20250916101438.GA3585920@google.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Tue, 16 Sep 2025 18:51:25 +0800
X-Gm-Features: AS18NWDo7mI5EB9dmqCohctCrqyLMUFRWlwlIpYcOxURUZMTdq3nypJv3YzNjgE
Message-ID: <CAMpQs4+kj0i1BpJ4Nk+Z=Ov-AMEWcqPmkbruNhD--TmycX4z-Q@mail.gmail.com>
To: Lee Jones <lee@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 16, 2025 at 6:14 PM Lee Jones wrote: > > On Tue, 
 16 Sep 2025, Binbin Zhou wrote: > > > Hi Lee: > > > > Thanks for your reply.
 > > > > On Tue, Sep 16, 2025 at 4:40 PM Lee Jones wrote: > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [zhoubb.aaron(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.50 listed in wl.mailspike.net]
X-Headers-End: 1uyTHl-0008IY-Ec
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
Cc: jeffbai@aosc.io, Corey Minyard <minyard@acm.org>,
 Binbin Zhou <zhoubinbin@loongson.cn>, kexybiscuit@aosc.io,
 Huacai Chen <chenhuacai@kernel.org>, linux-kernel@vger.kernel.org,
 loongarch@lists.linux.dev, wangyao@lemote.com, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBTZXAgMTYsIDIwMjUgYXQgNjoxNOKAr1BNIExlZSBKb25lcyA8bGVlQGtlcm5lbC5v
cmc+IHdyb3RlOgo+Cj4gT24gVHVlLCAxNiBTZXAgMjAyNSwgQmluYmluIFpob3Ugd3JvdGU6Cj4K
PiA+IEhpIExlZToKPiA+Cj4gPiBUaGFua3MgZm9yIHlvdXIgcmVwbHkuCj4gPgo+ID4gT24gVHVl
LCBTZXAgMTYsIDIwMjUgYXQgNDo0MOKAr1BNIExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+IHdy
b3RlOgo+ID4gPgo+ID4gPiBPbiBGcmksIDEyIFNlcCAyMDI1LCBCaW5iaW4gWmhvdSB3cm90ZToK
PiA+ID4KPiA+ID4gPiBIaSBMZWU6Cj4gPiA+ID4KPiA+ID4gPiBPbiBUaHUsIFNlcCAxMSwgMjAy
NSBhdCAxMDozM+KAr1BNIExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPiA+
ID4KPiA+ID4gPiA+IE9uIFRodSwgMDQgU2VwIDIwMjUgMjA6MzU6MDQgKzA4MDAsIEJpbmJpbiBa
aG91IHdyb3RlOgo+ID4gPiA+ID4gPiBUaGlzIHBhdGNoc2V0IGludHJvZHVjZXMgdGhlIExvb25n
c29uLTJLIEJNQy4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gSXQgaXMgYSBQQ0llIGRldmljZSBw
cmVzZW50IG9uIHNlcnZlcnMgc2ltaWxhciB0byB0aGUgTG9vbmdzb24tMyBDUFVzLgo+ID4gPiA+
ID4gPiBBbmQgaXQgaXMgYSBtdWx0aWZ1bmN0aW9uYWwgZGV2aWNlIChNRkQpLCBzdWNoIGFzIGRp
c3BsYXkgYXMgYSBzdWItZnVuY3Rpb24KPiA+ID4gPiA+ID4gb2YgaXQuCj4gPiA+ID4gPiA+Cj4g
PiA+ID4gPiA+IEZvciBJUE1JLCBhY2NvcmRpbmcgdG8gdGhlIGV4aXN0aW5nIGRlc2lnbiwgd2Ug
dXNlIHNvZnR3YXJlIHNpbXVsYXRpb24gdG8KPiA+ID4gPiA+ID4gaW1wbGVtZW50IHRoZSBLQ1Mg
aW50ZXJmYWNlIHJlZ2lzdGVyczogU3RhdXRzL0NvbW1hbmQvRGF0YV9PdXQvRGF0YV9Jbi4KPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gWy4uLl0KPiA+ID4gPiA+Cj4gPiA+ID4gPiBBcHBsaWVkLCB0
aGFua3MhCj4gPiA+ID4gPgo+ID4gPiA+ID4gWzEvM10gbWZkOiBsczJrYm1jOiBJbnRyb2R1Y2Ug
TG9vbmdzb24tMksgQk1DIGNvcmUgZHJpdmVyCj4gPiA+ID4gPiAgICAgICBjb21taXQ6IDY3YzI2
MzllMWZjMWEwN2I0NWQyMTZhZjY1OWMwZGQ5MmEzNzBjNjgKPiA+ID4gPiA+IFsyLzNdIG1mZDog
bHMya2JtYzogQWRkIExvb25nc29uLTJLIEJNQyByZXNldCBmdW5jdGlvbiBzdXBwb3J0Cj4gPiA+
ID4gPiAgICAgICBjb21taXQ6IDIzNjRjY2M4MjdlNDQwNjRlOTc2M2YyYWUyZDFkY2M1Zjk0NWZk
ZjMKPiA+ID4gPgo+ID4gPiA+IFRoYW5rcyBmb3IgYWNrbm93bGVkZ2luZyBteSBwYXRjaHNldC4K
PiA+ID4gPgo+ID4gPiA+IEkgY2FuJ3QgY29uZmlybSB3aHkgeW91IGRpZG4ndCBhcHBseSB0aGUg
SVBNSSBwYXRjaCwgYnV0IHRoaXMgYXBwZWFycwo+ID4gPiA+IHRvIGJyZWFrIHRoZSBwYXRjaHNl
dCdzIGludGVncml0eSwgcG90ZW50aWFsbHkgY2F1c2luZyBtaXNzaW5nIEtjb25maWcKPiA+ID4g
PiBkZXBlbmRlbmNpZXMgKElQTUlfTFMySyBzZWxlY3QgTUZEX0xTMktfQk1DX0NPUkUpLgo+ID4g
Pgo+ID4gPiBQcmV0dHkgc3VyZSB0aGlzIGRvZXNuJ3QgYnJlYWsgYW55dGhpbmcuCj4gPiA+Cj4g
PiA+IFdoYXQgYnVpbGQgZXJyb3JzIGRvIHlvdSBzZWUgYXMgYSByZXN1bHQ/Cj4gPiA+Cj4gPiA+
ID4gQWRkaXRpb25hbGx5LCBhcyBDb3JleSBwcmV2aW91c2x5IGV4cGxhaW5lZFsxXSwgdGhpcyBw
YXRjaCBjYW4gYmUKPiA+ID4gPiBhcHBsaWVkIHRocm91Z2ggeW91ciBzaWRlLgo+ID4gPiA+Cj4g
PiA+ID4gWzFdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvYUZWdE5BWTR1MmdEaUxEU0Bt
YWlsLm1pbnlhcmQubmV0Lwo+ID4gPgo+ID4gPiBXZSBvbmx5IGFwcGx5IGNyb3NzLXN1YnN5c3Rl
bSBwYXRjaC1zZXRzIHRvIGEgc2luZ2xlIHRyZWUgaWYgdGhlcmUgYXJlCj4gPiA+IGdvb2QgcmVh
c29ucyB0byBkbyBzby4gIEluIHRoaXMgaW5zdGFuY2UsIEkgY2FuJ3Qgc2VlIGFueSByZWFzb24g
d2h5IHRoZQo+ID4gPiBJUE1JIGRyaXZlciBjYW5ub3QgZ28gaW4gdmlhIGl0J3Mgb3duIHJlcG8u
Cj4gPgo+ID4gSG93ZXZlciwgdGhlcmUgc3RpbGwgc2VlbXMgdG8gYmUgYSB0ZXh0IGRlcGVuZGVu
Y3kgaXNzdWUuIFRoZSBJUE1JCj4gPiBwYXRjaCBtb2RpZmllcyB0aGUgTUFJTlRBSU5FUlMsIHdo
aWNoIGRlcGVuZHMgb24gdGhlIGZpcnN0IHBhdGNoLgo+ID4gSWYgdGhlIGVudGlyZSBzZXJpZXMg
b2YgcGF0Y2hlcyBjYW5ub3QgYmUgbWVyZ2VkIHRvZ2V0aGVyLCBkb2VzIHRoaXMKPiA+IG1lYW4g
dGhlIElQTUkgcGF0Y2ggY2FuIG9ubHkgYmUgbWVyZ2VkIGFmdGVyIHRoZSBNRkQgcGF0Y2ggaGFz
IGJlZW4KPiA+IG1lcmdlZCBpbnRvIHRoZSBtYWlubGluZT8KPgo+IE5vLCBub3QgYXQgYWxsLiAg
U28gbG9uZyBhcyBhbGwgcGF0Y2hlcyBjb21lIHRvZ2V0aGVyIGR1cmluZyB0aGUKPiBtZXJnZS13
aW5kb3csIHRoZXJlIGlzIG5vIGlzc3VlLgoKT0ssIEkgc2VlLCB0aGFua3MuCgpIaSBDb3JleToK
CldoYXQgZG8geW91IHRoaW5rIGFib3V0IGl0PwoKPgo+IC0tCj4gTGVlIEpvbmVzIFvmnY7nkLzm
lq9dCgotLSAKVGhhbmtzLgpCaW5iaW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1p
LWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
