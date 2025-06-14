Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0E4AD9A36
	for <lists+openipmi-developer@lfdr.de>; Sat, 14 Jun 2025 07:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RHK+Xg5s0BGlS1reU394JlWA/I3UFwcVpp1LclcOahY=; b=ajug1U7W8UBsSvtiuBfXNHyJau
	ig2m7gzOfit9dqN6mt/eC/64Zi4H1YAFkYmu/juU9DKChpyzdMY9p/o2G7MeSJ9eMSjb+8+tO6wl+
	GvZPDRAKRlhUic0ODXKoK1Clsak4CfkhW6u6u6MqFixqg+ASgSlbS481pHkkvTb3yHD8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uQJOc-0005yA-Q0;
	Sat, 14 Jun 2025 05:25:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubb.aaron@gmail.com>) id 1uQJOc-0005y3-69
 for openipmi-developer@lists.sourceforge.net;
 Sat, 14 Jun 2025 05:25:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hRJTDRHieaRf/TffBu5Atm9p8Td7XJLJrU2a/+g6SuI=; b=NKYYLvJMUbpenaHvn5bRYkRDai
 z1UxGc4IFHO3kXZvialwSus/EWVLk5lDldq0t3zzyYm7lNd1ts1qkKYfBuCDhUll1NUrhtawS9cSU
 ov/jhsw4YE443Kf4vWcf8gOG3xe6lYFQqQ0D6gmWk4bGmr+KTnKAyw1w9QVEfCY0x7+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hRJTDRHieaRf/TffBu5Atm9p8Td7XJLJrU2a/+g6SuI=; b=YLx9kXokQYhkfmafp4p73DPqsq
 ZNZg19/pltRMFYvjgl7zdQ8ers9A82L3oOza5VIRmv9cLgiIlEHj7RGEaboMTc1PlJ1hO3jaXdhD9
 96fzi27xUGWeYVx7NRHIAseWflVUuBD6CBVFN9V3iex8CqKLODVRdbpAnhPBVMyirNe4=;
Received: from mail-ej1-f45.google.com ([209.85.218.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uQJOb-0003kC-Hv for openipmi-developer@lists.sourceforge.net;
 Sat, 14 Jun 2025 05:25:38 +0000
Received: by mail-ej1-f45.google.com with SMTP id
 a640c23a62f3a-ade5a0442dfso509851666b.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 13 Jun 2025 22:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749878731; x=1750483531; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hRJTDRHieaRf/TffBu5Atm9p8Td7XJLJrU2a/+g6SuI=;
 b=A2qFNirQIDsjyW9LW7AeD451htmOAatotG1O+nd2bjHpjQ1MC8F2wNHWO2wW7tVIyp
 fRur8EPp+3V1VylX5mheku4m3gmzVXoTjfafUe0jfgcr1ZLUn99uCKww1DNlm8OZpGWo
 WAUkNoq1GzTR/m/TiL6KPMIxcd9hlx8K44jhBzDmTWjpDmGnQbp1MOqCnU7qmHGM8S5g
 Rmwv1MTzoYmkEE4dI+0LSs9pC4v0YGfc6lh77540IGjpab9JXa/su97t3xiTyAhXC4oG
 63IOrPYO3G6ZStsVFa262iR6HUx/ezbJZMkOilQ9o8sAC3XDxpgLhg4Ji+9BbjO/moIB
 OLUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749878731; x=1750483531;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hRJTDRHieaRf/TffBu5Atm9p8Td7XJLJrU2a/+g6SuI=;
 b=YWQKHD+Hdcfq8PCJ+4zVtNH82GreYsP5JFQsEWepGnhlUKWjuLYRgzDd8cOXgXEkZG
 WBMWTqzluNPP6kwTudDz5t3TtXlNhTE8YOss4cgdWsc8cCTihdGWj2n3xJov0g/WfNyF
 Nch00y5NQWfyHyvQxDB/06GlWSQyHWKu3A6CGoUfWYGOaICHReLokKID7JcBspSZAjqQ
 0UpFFr7Jp+pTQYvVt6eIdqOtyvQtJdbmdz70P9oBJgsvFSXaevNm4qFksedR9uV/TnhR
 MqlQQBEzAwJYE5STA/DIKTWXSw/XthgmnKFh+Y5z2IuTwkWh3D+IPBus0J4akpkTLcsg
 Gttg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVXZwwA7yELHPDL/3+bVTa/HYi1iGyyo/tCMeke4zVLf7t/c0lxt1y9i4Eu1oFGNUfutYDzJsGShkoWP9rk+dzJDfE=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy+yrSIBw5gCfdra83gDvSYy48fbGSwMKaZnhohS9a0+UeSG3sD
 W3hyP5E2h+oT7pSyxzYu34ptM9GdnBWHuRhJgbVRcQ/v4CvkBWwxWL65TLXCoC1v9LZ/jHrceZi
 JWuyHKYESMcf+7ZCmRhkuKsc+u52ocU8=
X-Gm-Gg: ASbGncv7huHcTjehZ+b1z5rfq13Y3XaILWuH0bLAgnIZSbV4T9JgtXHqK+XC5R/nsXG
 j6SIgVUU/EeUM8+joVV1e8Y2OhzCLqwcbnFf5FKzZx/5keEryyoOnk/K1MvmdfJZhwcG3XD61pL
 STMumj7hvKgn4n3jy08LgF/BTt2uDN/ArLRStHLPAmi18=
X-Google-Smtp-Source: AGHT+IHapdFK27H53F4XVXiqD5wMcJUfHlJ///sKdlD9/5Ue9114j8LrOjcX8TlQh1+/pEfuEFmB2y4U2d5+1Ip5zI8=
X-Received: by 2002:a17:907:3e0b:b0:ad8:a04e:dbd9 with SMTP id
 a640c23a62f3a-adfad54b342mr146959066b.31.1749878730622; Fri, 13 Jun 2025
 22:25:30 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1749731531.git.zhoubinbin@loongson.cn>
 <aEzFPdYEvbkaH_B5@mail.minyard.net>
 <CAMpQs4L66sXLdj6+ebMXcwq4i+XVi+AmwBbQSx0-EuULNJ5XeQ@mail.gmail.com>
 <aEzqbLHSB6phFNox@mail.minyard.net>
In-Reply-To: <aEzqbLHSB6phFNox@mail.minyard.net>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Sat, 14 Jun 2025 13:25:17 +0800
X-Gm-Features: AX0GCFtZaBoBTuWDI55b0cLkbbWqbq0R6o1trZvkcvX1DmmxrsUMfvsIDVbdE7c
Message-ID: <CAMpQs4L82x=OhLQJb96ZC4YfT_ZhHcU+zks2r0HMU0Y2fjwsbg@mail.gmail.com>
To: corey@minyard.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey: Thanks for your detailed suggestions. On Sat, Jun
 14, 2025 at 11:20 AM Corey Minyard wrote: > > On Sat, Jun 14,
 2025 at 10:50:37AM
 +0800, Binbin Zhou wrote: > > Hi Corey: > > > > On Sat, Jun 14, 2025 at 8:41
 AM Corey Minyard wrote: > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [zhoubb.aaron(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.45 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uQJOb-0003kC-Hv
Subject: Re: [Openipmi-developer] [PATCH v4 0/3] LoongArch: Add Loongson-2K
 BMC support
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
Cc: jeffbai@aosc.io, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>, Binbin Zhou <zhoubinbin@loongson.cn>,
 kexybiscuit@aosc.io, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev, wangyao@lemote.com,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net,
 Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgQ29yZXk6CgpUaGFua3MgZm9yIHlvdXIgZGV0YWlsZWQgc3VnZ2VzdGlvbnMuCgpPbiBTYXQs
IEp1biAxNCwgMjAyNSBhdCAxMToyMOKAr0FNIENvcmV5IE1pbnlhcmQgPGNvcmV5QG1pbnlhcmQu
bmV0PiB3cm90ZToKPgo+IE9uIFNhdCwgSnVuIDE0LCAyMDI1IGF0IDEwOjUwOjM3QU0gKzA4MDAs
IEJpbmJpbiBaaG91IHdyb3RlOgo+ID4gSGkgQ29yZXk6Cj4gPgo+ID4gT24gU2F0LCBKdW4gMTQs
IDIwMjUgYXQgODo0MeKAr0FNIENvcmV5IE1pbnlhcmQgPGNvcmV5QG1pbnlhcmQubmV0PiB3cm90
ZToKPiA+ID4KPiA+ID4gT24gRnJpLCBKdW4gMTMsIDIwMjUgYXQgMDI6NDM6MzhQTSArMDgwMCwg
QmluYmluIFpob3Ugd3JvdGU6Cj4gPiA+ID4gSGkgYWxsOgo+ID4gPiA+Cj4gPiA+ID4gVGhpcyBw
YXRjaCBzZXQgaW50cm9kdWNlcyB0aGUgTG9vbmdzb24tMksgQk1DLgo+ID4gPiA+Cj4gPiA+ID4g
SXQgaXMgYSBQQ0llIGRldmljZSBwcmVzZW50IG9uIHNlcnZlcnMgc2ltaWxhciB0byB0aGUgTG9v
bmdzb24tMyBDUFVzLgo+ID4gPiA+IEFuZCBpdCBpcyBhIG11bHRpZnVuY3Rpb25hbCBkZXZpY2Ug
KE1GRCksIHN1Y2ggYXMgZGlzcGxheSBhcyBhIHN1Yi1mdW5jdGlvbgo+ID4gPiA+IG9mIGl0Lgo+
ID4gPgo+ID4gPiBJJ3ZlIGFza2VkIHRoaXMgYmVmb3JlLCBidXQgSSBoYXZlbid0IGdvdHRlbiBh
IGFuc3dlciwgSSBkb24ndCB0aGluay4KPiA+ID4KPiA+ID4gSXMgdGhpcyByZWFsbHkgYSBtdWx0
aS1mdW5jdGlvbiBkZXZpY2U/ICBJcyB0aGVyZSAob3Igd2lsbCB0aGVyZSBiZSkKPiA+ID4gYW5v
dGhlciBkcml2ZXIgdGhhdCB1c2VzIHRoZSBNRkQgY29kZT8KPiA+Cj4gPiBJIGFtIHZlcnkgc29y
cnksIEkgbWF5IGhhdmUgb3Zlcmxvb2tlZCB5b3VyIHByZXZpb3VzIHF1ZXN0aW9uLgo+ID4KPiA+
IEFuZCBJIGFsc28gbWF5IG5vdCBoYXZlIGEgdGhvcm91Z2ggdW5kZXJzdGFuZGluZyBvZiBtdWx0
aWZ1bmN0aW9uIGRldmljZXMuCj4gPgo+ID4gVGhlIExvb25nc29uLTJLIEJNQyBkZXZpY2UgcHJv
dmlkZXMgdHdvIGZ1bmN0aW9uczogZGlzcGxheSBhbmQgSVBNSS4KPiA+IEZvciBkaXNwbGF5LCB3
ZSBwYXNzIHRoZSBzaW1wbGVmYl9wbGF0Zm9ybV9kYXRhIHBhcmFtZXRlciBhbmQgcmVnaXN0ZXIK
PiA+IHRoZSBzaW1wbGVkcm0gZGV2aWNlLCBhcyBzaG93biBpbiBwYXRjaC0xLgo+ID4KPiA+IFRo
ZXJlZm9yZSwgSSB0aGluayB0aGlzIHNob3VsZCBiZSBjb25zaWRlcmVkIGEgbXVsdGlmdW5jdGlv
biBkZXZpY2UuCj4KPiBPaywgdGhhdCdzIGNsZWFyLCB0aGFuayB5b3UuCj4KPiBIb3dldmVyLCB0
aGF0J3Mgbm90IHJlYWxseSB2ZXJ5IGNsZWFyIGZyb20gdGhlIHBhdGNoZXMgeW91IGhhdmUKPiBw
cm92aWRlZC4gIFBhcnRpY3VsYXJseSwgdGhlICJibWMiIGluIHRoZSBuYW1lIGZyb20gcGF0Y2gg
MSBtYWtlcyBvbmUKPiB0aGluayB0aGF0IGl0J3Mgb25seSBhIGJtYy4KPgo+IFRoZSAiYm1jIiBu
YW1lIGlzIGFsc28gYSBsaXR0bGUgY29uZnVzaW5nOyB0aGUgZGV2aWNlcyB3aXRoIGEgImJtYyIg
aW4KPiB0aGUgbmFtZSBhcmUgYWxsIHRoZSBCTUMgc2lkZSwgYnV0IHlvdSBhcmUgZG9pbmcgYSBo
b3N0IHNpZGUgZGV2aWNlLgo+Cj4gSWYgeW91IGxvb2sgYXQgbW9zdCBvZiB0aGUgb3RoZXIgTUZE
cywgdGhleSBoYXZlIGEgImNvcmUiIHNlY3Rpb24gdGhlbgo+IHZhcmlvdXMgb3RoZXIgcGFydHMg
dGhhdCB1c2UgdGhlIGNvcmUuICBBbmQgcG9zc2libHkgcGFydHMgaW4gb3RoZXIKPiBkaXJlY3Rv
cmllcyBmb3IgaW5kaXZpZHVhbCBmdW5jdGlvbnMuICBJIHRoaW5rIHlvdSBuZWVkIHRvIGRvIHRo
ZSBzYW1lCj4gZGVzaWduLiAgSGF2ZSBhICJjb3JlIiBzZWN0aW9uIHRoYXQgYm90aCB0aGUgZGlz
cGxheSBhbmQgYm1jIHVzZSwgdGhlbiBhCj4gc2VwYXJhdGUgZGlzcGxheSBhbmQgYm1jIGRyaXZl
ci4KCklmIGl0IGNhbiBiZSByZWNvbnN0cnVjdGVkIGluIHRoaXMgd2F5LCBpdCBzaG91bGQgYmUg
Y2xlYXJlci4KCkhvd2V2ZXIsIHRoZXJlIGlzIGEga2V5IHBvaW50IGluIG15IG1pbmQ6IGlmIHRo
ZSBkaXNwbGF5IGFuZCBJUE1JIGFyZQpzZXBhcmF0ZWQgaW50byB0d28gcGFydHMsIHRoZXkgc2hv
dWxkIGF0IGxlYXN0IGJlIGFibGUgdG8gYmUgcHJvYmVkCnNlcGFyYXRlbHksIGJ1dCBpbiBmYWN0
IHRoZXkgYmVsb25nIHRvIHRoZSBzYW1lIFBDSS1FIGRldmljZSwganVzdAphbGxvY2F0ZWQgZGlm
ZmVyZW50IHJlc291cmNlIGludGVydmFscy4KCnN0YXRpYyBzdHJ1Y3QgcGNpX2RldmljZV9pZCBs
czJrX2JtY19kZXZpY2VzW10gPSB7CiAgICAgICB7IFBDSV9ERVZJQ0UoUENJX1ZFTkRPUl9JRF9M
T09OR1NPTiwgMHgxYTA1KSB9LAogICAgICAgeyB9Cn07Ck1PRFVMRV9ERVZJQ0VfVEFCTEUocGNp
LCBsczJrX2JtY19kZXZpY2VzKTsKCkknbSBub3Qgc3VyZSBpZiBteSB1bmRlcnN0YW5kaW5nIGlz
IGNvcnJlY3Q/Cgo+Cj4gVGhhdCB3YXksIHlvdSBjYW4gdXNlIHRoZSBkaXNwbGF5IHdpdGhvdXQg
dGhlIElQTUkgaW50ZXJmYWNlLCBvciB0aGUKPiBJUE1JIGludGVyZmFjZSB3aXRob3V0IHRoZSBk
aXNwbGF5Lgo+Cj4gSSB3b3VsZCBsaWtlIHRvIHNlZToKPgo+ICogQSBjb3JlIG1mZCBkZXZpY2Ug
bmFtZWQgbHMyay1jb3JlLmMgdGhhdCBoYXMgdGhlIGNvcmUgZnVuY3Rpb25zLgo+ICAgSXQgd291
bGQgaGF2ZSBpdHMgb3duIGNvbmZpZyBpdGVtIChNRkRfTFMySykgdGhhdCB3b3VsZCBiZQo+ICAg
c2VsZWN0ZWQgaWYgZWl0aGVyIHRoZSBkaXNwbGF5IG9yIElQTUkgZGV2aWNlIGlzIGVuYWJsZWQu
Cj4KPiAqIEEgc2VwYXJhdGUgZGlzcGxheSBkZXZpY2UgaW4gaXRzIG93biBmaWxlIHdpdGggaXRz
IG93biBjb25maWcgaXRlbS4KPiAgIFRoaXMgaXNuJ3QgbXkgYXJlYSwgc28gSSdtIG5vdCBzdXJl
IHdoZXJlIHRoaXMgc2hvdWxkIGdvLgo+Cj4gKiBUaGUgSVBNSSBkZXZpY2UgaW4gdGhlIGlwbWkg
ZGlyZWN0b3J5IG5hbWVkIGlwbWlfbHMyay5jLCBhZ2Fpbgo+ICAgd2l0aCBpdCdzIG93biBjb25m
aWcgaXRlbSAoSVBNSV9MUzJLKS4KPgo+IERvZXMgdGhhdCBtYWtlIHNlbnNlPyAgSSBkb24ndCB3
YW50IHRvIG1ha2UgdGhpbmdzIHRvbyBoYXJkLCBidXQgdGhhdCdzCj4gdGhlIHdheSBwcmV0dHkg
bXVjaCBldmVyeXRoaW5nIGVsc2UgaXMgZG9uZSBvbiBNRkRzLgo+Cj4gVGhhbmtzLAo+Cj4gLWNv
cmV5Cj4KPiA+Cj4gPiA+Cj4gPiA+IElmIG5vdGhpbmcgZWxzZSBpcyBnb2luZyB0byB1c2UgdGhp
cywgdGhlbiBpdCdzIHJlYWxseSBub3QgYQo+ID4gPiBtdWx0aS1mdW5jdGlvbiBkZXZpY2UgYW5k
IGFsbCB0aGUgY29kZSBjYW4gZ28gaW50byB0aGUgSVBNSSBkaXJlY3RvcnkuCj4gPiA+IFRoYXQg
c2ltcGxpZmllcyBtYWludGVuYW5jZS4KPiA+ID4KPiA+ID4gSWYgaXQgaXMgYSBtdWx0aS1mdW5j
dGlvbiBkZXZpY2UsIHRoZW4gSSB3YW50IHR3byBzZXBhcmF0ZSBLY29uZmlnCj4gPiA+IGl0ZW1z
LCBvbmUgZm9yIHRoZSBNRkQgYW5kIG9uZSBmb3IgdGhlIElQTUkgcG9ydGlvbi4gIFRoYXQgd2F5
IGl0J3MKPiA+ID4gcmVhZHkgYW5kIHlvdSBkb24ndCBoYXZlIHRvIGJvdGhlciBhYm91dCB0aGUg
SVBNSSBwb3J0aW9uIHdoZW4KPiA+ID4gYWRkaW5nIHRoZSBvdGhlciBkZXZpY2UuCj4gPiA+Cj4g
PiA+IEFsbCBlbHNlIGxvb2tzIGdvb2QsIEkgdGhpbmsuCj4gPiA+Cj4gPiA+IC1jb3JleQo+ID4g
Pgo+ID4gPiA+Cj4gPiA+ID4gRm9yIElQTUksIGFjY29yZGluZyB0byB0aGUgZXhpc3RpbmcgZGVz
aWduLCB3ZSB1c2Ugc29mdHdhcmUgc2ltdWxhdGlvbiB0bwo+ID4gPiA+IGltcGxlbWVudCB0aGUg
S0NTIGludGVyZmFjZSByZWdpc3RlcnM6IFN0YXV0cy9Db21tYW5kL0RhdGFfT3V0L0RhdGFfSW4u
Cj4gPiA+ID4KPiA+ID4gPiBBbHNvIHNpbmNlIGJvdGggaG9zdCBzaWRlIGFuZCBCTUMgc2lkZSBy
ZWFkIGFuZCB3cml0ZSBrY3Mgc3RhdHVzLCB3ZSB1c2UKPiA+ID4gPiBmaWZvIHBvaW50ZXIgdG8g
ZW5zdXJlIGRhdGEgY29uc2lzdGVuY3kuCj4gPiA+ID4KPiA+ID4gPiBGb3IgdGhlIGRpc3BsYXks
IGJhc2VkIG9uIHNpbXBsZWRybSwgdGhlIHJlc29sdXRpb24gaXMgcmVhZCBmcm9tIGEgZml4ZWQK
PiA+ID4gPiBwb3NpdGlvbiBpbiB0aGUgQk1DIHNpbmNlIHRoZSBoYXJkd2FyZSBkb2VzIG5vdCBz
dXBwb3J0IGF1dG8tZGV0ZWN0aW9uCj4gPiA+ID4gb2YgdGhlIHJlc29sdXRpb24uIE9mIGNvdXJz
ZSwgd2Ugd2lsbCB0cnkgdG8gc3VwcG9ydCBtdWx0aXBsZQo+ID4gPiA+IHJlc29sdXRpb25zIGxh
dGVyLCB0aHJvdWdoIGEgdmJpb3MtbGlrZSBhcHByb2FjaC4KPiA+ID4gPgo+ID4gPiA+IEVzcGVj
aWFsbHksIGZvciB0aGUgQk1DIHJlc2V0IGZ1bmN0aW9uLCBzaW5jZSB0aGUgZGlzcGxheSB3aWxs
IGJlCj4gPiA+ID4gZGlzY29ubmVjdGVkIHdoZW4gQk1DIHJlc2V0LCB3ZSBtYWRlIGEgc3BlY2lh
bCB0cmVhdG1lbnQgb2YgcmUtcHVzaC4KPiA+ID4gPgo+ID4gPiA+IEJhc2VkIG9uIHRoaXMsIEkg
d2lsbCBwcmVzZW50IGl0IGluIGZvdXIgcGF0Y2hlczoKPiA+ID4gPiBwYXRjaC0xOiBCTUMgZGV2
aWNlIFBDSSByZXNvdXJjZSBhbGxvY2F0aW9uLgo+ID4gPiA+IHBhdGNoLTI6IEJNQyByZXNldCBm
dW5jdGlvbiBzdXBwb3J0Cj4gPiA+ID4gcGF0Y2gtMzogSVBNSSBpbXBsZW1lbnRhdGlvbgo+ID4g
PiA+Cj4gPiA+ID4gVGhhbmtzLgo+ID4gPiA+Cj4gPiA+ID4gLS0tLS0tLQo+ID4gPiA+IFY0Ogo+
ID4gPiA+IC0gQWRkIFJldmlld2VkLWJ5IHRhZzsKPiA+ID4gPiAtIENoYW5nZSB0aGUgb3JkZXIg
b2YgdGhlIHBhdGNoZXMuCj4gPiA+ID4gUGF0Y2ggKDEvMyk6Cj4gPiA+ID4gICAtIEZpeCBidWls
ZCB3YXJuaW5nIGJ5IGxrcDogS2NvbmZpZyB0cmlzdGF0ZSAtPiBib29sCj4gPiA+ID4gICAgIC0g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNTMxMjAyMi5RbUZtR0UxRi1sa3BAaW50
ZWwuY29tLwo+ID4gPiA+ICAtIFVwZGF0ZSBjb21taXQgbWVzc2FnZTsKPiA+ID4gPiAgLSBNb3Zl
IE1GRF9MUzJLX0JNQyBhZnRlciBNRkRfSU5URUxfTTEwX0JNQ19QTUNJIGluIEtjb25maWcgYW5k
Cj4gPiA+ID4gICAgTWFrZWZpbGUuCj4gPiA+ID4gUGF0Y2ggKDIvMyk6Cj4gPiA+ID4gICAtIFJl
bW92ZSB1bm5lY2Vzc2FyeSBuZXdsaW5lczsKPiA+ID4gPiAgIC0gUmVuYW1lIGxzMmtfYm1jX2No
ZWNrX3BjaWVfY29ubmVjdGVkKCkgdG8KPiA+ID4gPiAgICAgbHMya19ibWNfcGNpZV9pc19jb25u
ZWN0ZWQoKTsKPiA+ID4gPiAgIC0gVXBkYXRlIGNvbW1lbnQgbWVzc2FnZS4KPiA+ID4gPiBQYXRj
aCAoMy8zKToKPiA+ID4gPiAgIC0gUmVtb3ZlIHVubmVjZXNzYXJ5IG5ld2xpbmVzLgo+ID4gPiA+
Cj4gPiA+ID4gTGluayB0byBWMzoKPiA+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
Y292ZXIuMTc0ODUwNTQ0Ni5naXQuemhvdWJpbmJpbkBsb29uZ3Nvbi5jbi8KPiA+ID4gPgo+ID4g
PiA+IFYzOgo+ID4gPiA+IFBhdGNoICgxLzMpOgo+ID4gPiA+ICAtIERyb3AgIk1GRCIgaW4gdGl0
bGUgYW5kIGNvbW1lbnQ7Cj4gPiA+ID4gIC0gRnJvbWF0dGluZyBjb2RlOwo+ID4gPiA+ICAtIEFk
ZCBjbGVhcmVyIGNvbW1lbnRzLgo+ID4gPiA+IFBhdGNoICgyLzMpOgo+ID4gPiA+ICAtIFJlYmFz
ZSBsaW51eC1pcG1pL25leHQgdHJlZTsKPiA+ID4gPiAgLSBVc2UgcmVhZHgoKS93cml0ZXgoKSB0
byByZWFkIGFuZCB3cml0ZSBJUE1JIGRhdGEgaW5zdGVhZCBvZiBzdHJ1Y3R1cmUKPiA+ID4gPiAg
ICBwb2ludGVyIHJlZmVyZW5jZXM7Cj4gPiA+ID4gIC0gQ09ORklHX0xPT05HQVJDSCAtPiBNRkRf
TFMyS19CTUM7Cj4gPiA+ID4gIC0gRHJvcCB1bnVzZWQgb3V0cHV0Lgo+ID4gPiA+IFBhdGNoICgz
LzMpOgo+ID4gPiA+ICAtIElubGluZSB0aGUgbHMya19ibWNfZ3Bpb19yZXNldF9oYW5kbGVyKCkg
ZnVuY3Rpb24gdG8gbHMya19ibWNfcGRhdGFfaW5pdGlhbCgpOwo+ID4gPiA+ICAtIEFkZCBjbGVh
cmVyIGNvbW1lbnRzLgo+ID4gPiA+ICAtIFVzZSBwcm9wZXIgbXVsdGktbGluZSBjb21tZW50YXJ5
IGFzIHBlciB0aGUgQ29kaW5nIFN0eWxlIGRvY3VtZW50YXRpb247Cj4gPiA+ID4gIC0gRGVmaW5l
IGFsbCBtYWdpYyBudW1iZXJzLgo+ID4gPiA+Cj4gPiA+ID4gTGluayB0byBWMjoKPiA+ID4gPiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvY292ZXIuMTc0NzI3NjA0Ny5naXQuemhvdWJpbmJp
bkBsb29uZ3Nvbi5jbi8KPiA+ID4gPgo+ID4gPiA+IFYyOgo+ID4gPiA+IC0gRHJvcCBsczJrZHJt
LCB1c2Ugc2ltcGxlZHJtIGluc3RlYWQuCj4gPiA+ID4gUGF0Y2ggKDEvMyk6Cj4gPiA+ID4gIC0g
VXNlIERFRklORV9SRVNfTUVNX05BTUVEL01GRF9DRUxMX1JFUyBzaW1wbGlmaWVkIGNvZGU7Cj4g
PiA+ID4gIC0gQWRkIHJlc29sdXRpb24gZmV0Y2hpbmcgZHVlIHRvIHJlcGxhY2luZyB0aGUgb3Jp
Z2luYWwgZGlzcGxheQo+ID4gPiA+ICAgIHNvbHV0aW9uIHdpdGggc2ltcGxlZHJtOwo+ID4gPiA+
ICAtIEFkZCBhcGVydHVyZV9yZW1vdmVfY29uZmxpY3RpbmdfZGV2aWNlcygpIHRvIGF2b2lkIGVm
aWZiCj4gPiA+ID4gICAgY29uZmxpY3Qgd2l0aCBzaW1wbGVkcm0uCj4gPiA+ID4gUGF0Y2ggKDMv
Myk6Cj4gPiA+ID4gIC0gVGhpcyBwYXJ0IG9mIHRoZSBmdW5jdGlvbiwgbW92ZWQgZnJvbSB0aGUg
b3JpZ2luYWwgbHMya2RybSB0byBtZmQ7Cj4gPiA+ID4gIC0gVXNlIHNldF9jb25zb2xlIHRvIGlt
cGxlbWVudCB0aGUgUmUtcHVzaCBkaXNwbGF5IGZ1bmN0aW9uLgo+ID4gPiA+Cj4gPiA+ID4gTGlu
ayB0byBWMToKPiA+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvY292ZXIuMTczNTU1
MDI2OS5naXQuemhvdWJpbmJpbkBsb29uZ3Nvbi5jbi8KPiA+ID4gPgo+ID4gPiA+IEJpbmJpbiBa
aG91ICgzKToKPiA+ID4gPiAgIG1mZDogbHMya2JtYzogSW50cm9kdWNlIExvb25nc29uLTJLIEJN
QyBjb3JlIGRyaXZlcgo+ID4gPiA+ICAgbWZkOiBsczJrYm1jOiBBZGQgTG9vbmdzb24tMksgQk1D
IHJlc2V0IGZ1bmN0aW9uIHN1cHBvcnQKPiA+ID4gPiAgIGlwbWk6IEFkZCBMb29uZ3Nvbi0ySyBC
TUMgc3VwcG9ydAo+ID4gPiA+Cj4gPiA+ID4gIGRyaXZlcnMvY2hhci9pcG1pL01ha2VmaWxlICAg
ICAgIHwgICAxICsKPiA+ID4gPiAgZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zaS5oICAgICAgfCAg
IDcgKwo+ID4gPiA+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX2ludGYuYyB8ICAgMyArCj4g
PiA+ID4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfbHMyay5jIHwgMTg5ICsrKysrKysrKysr
Kwo+ID4gPiA+ICBkcml2ZXJzL21mZC9LY29uZmlnICAgICAgICAgICAgICB8ICAxMiArCj4gPiA+
ID4gIGRyaXZlcnMvbWZkL01ha2VmaWxlICAgICAgICAgICAgIHwgICAyICsKPiA+ID4gPiAgZHJp
dmVycy9tZmQvbHMya2JtYy1tZmQuYyAgICAgICAgfCA0ODUgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKwo+ID4gPiA+ICA3IGZpbGVzIGNoYW5nZWQsIDY5OSBpbnNlcnRpb25zKCspCj4g
PiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpX2xzMmsu
Ywo+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZmQvbHMya2JtYy1tZmQuYwo+
ID4gPiA+Cj4gPiA+ID4KPiA+ID4gPiBiYXNlLWNvbW1pdDogY2QyZTEwM2Q1N2U1NjE1ZjliYjAy
N2Q3NzJmOTNiOWVmZDU2NzIyNAo+ID4gPiA+IC0tCj4gPiA+ID4gMi40Ny4xCj4gPiA+ID4KPiA+
Cj4gPgo+ID4gLS0KPiA+IFRoYW5rcy4KPiA+IEJpbmJpbgoKLS0gClRoYW5rcy4KQmluYmluCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWkt
ZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5p
cG1pLWRldmVsb3Blcgo=
