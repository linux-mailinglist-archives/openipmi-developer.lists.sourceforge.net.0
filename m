Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E9EB53FCD
	for <lists+openipmi-developer@lfdr.de>; Fri, 12 Sep 2025 03:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZpeJlEhs/DWjuZVErV08kTfUaXvNvGBazj9eeHi/D5g=; b=me9pjU9UAxopzJSbuU+VzSaYAp
	wLe6uBxoL91R48seWC8QxFZ2vLVFxld6NKOd3Cv0FpieQT+oimS3s1xChYbYpRwvl6IeFvcc+/ARe
	5VFtahY+2W1XYl5cRZQXqhQE58iSWBdw/wcwnkKTbcag2p9QpKQTzcRLFFSzeLt6laoA=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uwsUd-0003S8-AV;
	Fri, 12 Sep 2025 01:22:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubb.aaron@gmail.com>) id 1uwsUc-0003S2-Sq
 for openipmi-developer@lists.sourceforge.net;
 Fri, 12 Sep 2025 01:22:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xqEJRFTqkXTHPxe+anHjP+6b7P+oYHlI0fjlwqZC7wk=; b=Pesq/F4yumoA+o8BBkXh94ihNC
 ZovaaidjRzHt3XXdzvtXC2oNyTKKuJ373EatnPmy2cNfxcGkDy/fSd3sSELEEuoIuGEsCVB54JQ+q
 ctu1nI1couAEH/GMTJPdijdujkk0W2zOWRV3QsUR79EbpD06ZFDGyeYdkaPTz6eUnhIo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xqEJRFTqkXTHPxe+anHjP+6b7P+oYHlI0fjlwqZC7wk=; b=Vxvnm0v4ftjZAcrznRf+71QGAT
 yneOdHXorYeX610gqgb8Izzo/uZwG1bS6gH0YJsOedlgHkYw1H5W1dW3hQpI3SZdPCY4YynI7QYuv
 I4xec+fQn5u0/jhx3enHd3mQopIX5RKcpaFZDC7Rv7H06NnxS5o5Yj4Uw5+UFbP0Vh34=;
Received: from mail-ej1-f44.google.com ([209.85.218.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uwsUc-0001qR-8y for openipmi-developer@lists.sourceforge.net;
 Fri, 12 Sep 2025 01:22:26 +0000
Received: by mail-ej1-f44.google.com with SMTP id
 a640c23a62f3a-b042cc39551so209676666b.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 11 Sep 2025 18:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757640139; x=1758244939; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xqEJRFTqkXTHPxe+anHjP+6b7P+oYHlI0fjlwqZC7wk=;
 b=L09lVhlwfhKkSHYC9xgvaT+icgjCmaR8uw9gRI3SdhlPTmnMpLe2FD4W4FyBzArfUB
 WbvgZBEsld3+0P9DGFMfsPmFjPtUG0c/3Hf8sBehO9eUBbV3AcUIuSRRIvunKKj11Wcr
 9Ae4hqJfxIcuCZa2sTK1R/tnPnXskr8tUrwH6dQITZ6Q2yTZ4rZr3+kEQw2yN7DZRuux
 dxNa/1Inr285EIfD33et/ZBcbUYv1Fi9eENTmth4tG8Myzn3pafK4/Q/cX84mP7qkl5M
 Qunmp8DnTx8SDSVJcXYLTjZ2wamU90IQMoN0QD54ZfPS6BVxhDK9jDro1wd+FXVj55A9
 MAxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757640139; x=1758244939;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xqEJRFTqkXTHPxe+anHjP+6b7P+oYHlI0fjlwqZC7wk=;
 b=pwS9vcOtdZAkY72q2YTIvryG1ZNLO3CIVTmtzvBbBlwJK4BpzJHfJo4zAk4n7LLN66
 giVSJbv/xU/zEM1Px8TA6kALlPvumxPT5n07CxrsjjfmOEw1R7dMgToWcHPM+5GdBHyq
 IXYLODSm99kWOXNJSKVHIU44YOtAk3Qq32t590bUYBUa4GHj5P339ZfjWTc/Xq6Iu+g3
 4+7tOgfe8ynhbRDuLyc0CPvjiD5IY2+Fca2dTJ7JYiHC9gzRiUWU4SiIzktM7Rwhkgzr
 uLWefM2qiRoeFP1J9U7cfRPo+AzQ+d/7/cYiJzcDGNhqktC4EQmxO6WSMbZ8iQYapCtP
 pEUA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUo6l+qE3osUgqi4qLEoEUsxNS6cTqmi92bq7UCJjLex7jmN+/B9txsjqRa13a47hCWpoibWRts3bIDyKXAxiHHP1s=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx61ZWTyb03fnUSQYrksivNxpxS2aB96J1GoMC0vcbCeH0/SwHf
 Q8gjCrq9Ck2BshDxWC0po9H4O+NVut+TqbBuZrKL2MCeiOkathiHjexjebKA31bquO1fKT2g5Hr
 yvIsVMzgx/U+AGUNmfh1TQKN20P2QHg2EcnNr5rbQIg==
X-Gm-Gg: ASbGncsvpigFkvjMKeZrHkt0CF913pxiSuyg6VjCMPQHLBgMgegcUg/8nUhheSJuKF+
 enYwdNGRd+kxw4W6c4MInFeyHmR1J1j51LZO4Kfv5AIUMrWQkYTnxfHCBxcNQjv6rHxxW2TLlaZ
 2eTV7IBrxRYX5/dPVEnAAGd0hUvX6fUcdx/b5bjvGipegJNXWLAT6fZwoePHzkxXj1dY5sEHvOa
 qf876+AMIL82Kq5aA==
X-Google-Smtp-Source: AGHT+IGt/CLEu8nR5Ze+5xkikkjJ2cYfz+ATtY+dq2NhWYwDAqW/E0WWlDo1nJkUnD4bsOlbYioLZpU2LK1U54XCsZI=
X-Received: by 2002:a17:907:1c1d:b0:afe:9f26:5819 with SMTP id
 a640c23a62f3a-b07c35cd754mr106362266b.28.1757640138949; Thu, 11 Sep 2025
 18:22:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1756987761.git.zhoubinbin@loongson.cn>
 <175760122164.1552180.16853979882678693472.b4-ty@kernel.org>
In-Reply-To: <175760122164.1552180.16853979882678693472.b4-ty@kernel.org>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Fri, 12 Sep 2025 09:22:06 +0800
X-Gm-Features: AS18NWAv152H9tlVnEaqIuU7dXqcdClzdZ--91I9sBvedtXMJlWCJzVaZLWxQLM
Message-ID: <CAMpQs4JbQU3D-Bs2687BXSC=FKJBS6RMvWAKb6AJEtzit6hWqw@mail.gmail.com>
To: Lee Jones <lee@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Lee: On Thu, Sep 11, 2025 at 10:33 PM Lee Jones wrote:
 > > On Thu, 04 Sep 2025 20:35:04 +0800, Binbin Zhou wrote: > > This patchset
 introduces the Loongson-2K BMC. > > > > It is a PCIe device present on [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [zhoubb.aaron(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.218.44 listed in wl.mailspike.net]
X-Headers-End: 1uwsUc-0001qR-8y
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

SGkgTGVlOgoKT24gVGh1LCBTZXAgMTEsIDIwMjUgYXQgMTA6MzPigK9QTSBMZWUgSm9uZXMgPGxl
ZUBrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIFRodSwgMDQgU2VwIDIwMjUgMjA6MzU6MDQgKzA4
MDAsIEJpbmJpbiBaaG91IHdyb3RlOgo+ID4gVGhpcyBwYXRjaHNldCBpbnRyb2R1Y2VzIHRoZSBM
b29uZ3Nvbi0ySyBCTUMuCj4gPgo+ID4gSXQgaXMgYSBQQ0llIGRldmljZSBwcmVzZW50IG9uIHNl
cnZlcnMgc2ltaWxhciB0byB0aGUgTG9vbmdzb24tMyBDUFVzLgo+ID4gQW5kIGl0IGlzIGEgbXVs
dGlmdW5jdGlvbmFsIGRldmljZSAoTUZEKSwgc3VjaCBhcyBkaXNwbGF5IGFzIGEgc3ViLWZ1bmN0
aW9uCj4gPiBvZiBpdC4KPiA+Cj4gPiBGb3IgSVBNSSwgYWNjb3JkaW5nIHRvIHRoZSBleGlzdGlu
ZyBkZXNpZ24sIHdlIHVzZSBzb2Z0d2FyZSBzaW11bGF0aW9uIHRvCj4gPiBpbXBsZW1lbnQgdGhl
IEtDUyBpbnRlcmZhY2UgcmVnaXN0ZXJzOiBTdGF1dHMvQ29tbWFuZC9EYXRhX091dC9EYXRhX0lu
Lgo+ID4KPiA+IFsuLi5dCj4KPiBBcHBsaWVkLCB0aGFua3MhCj4KPiBbMS8zXSBtZmQ6IGxzMmti
bWM6IEludHJvZHVjZSBMb29uZ3Nvbi0ySyBCTUMgY29yZSBkcml2ZXIKPiAgICAgICBjb21taXQ6
IDY3YzI2MzllMWZjMWEwN2I0NWQyMTZhZjY1OWMwZGQ5MmEzNzBjNjgKPiBbMi8zXSBtZmQ6IGxz
MmtibWM6IEFkZCBMb29uZ3Nvbi0ySyBCTUMgcmVzZXQgZnVuY3Rpb24gc3VwcG9ydAo+ICAgICAg
IGNvbW1pdDogMjM2NGNjYzgyN2U0NDA2NGU5NzYzZjJhZTJkMWRjYzVmOTQ1ZmRmMwoKVGhhbmtz
IGZvciBhY2tub3dsZWRnaW5nIG15IHBhdGNoc2V0LgoKSSBjYW4ndCBjb25maXJtIHdoeSB5b3Ug
ZGlkbid0IGFwcGx5IHRoZSBJUE1JIHBhdGNoLCBidXQgdGhpcyBhcHBlYXJzCnRvIGJyZWFrIHRo
ZSBwYXRjaHNldCdzIGludGVncml0eSwgcG90ZW50aWFsbHkgY2F1c2luZyBtaXNzaW5nIEtjb25m
aWcKZGVwZW5kZW5jaWVzIChJUE1JX0xTMksgc2VsZWN0IE1GRF9MUzJLX0JNQ19DT1JFKS4KCkFk
ZGl0aW9uYWxseSwgYXMgQ29yZXkgcHJldmlvdXNseSBleHBsYWluZWRbMV0sIHRoaXMgcGF0Y2gg
Y2FuIGJlCmFwcGxpZWQgdGhyb3VnaCB5b3VyIHNpZGUuCgpbMV06IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC9hRlZ0TkFZNHUyZ0RpTERTQG1haWwubWlueWFyZC5uZXQvCgo+Cj4gLS0KPiBM
ZWUgSm9uZXMgW+adjueQvOaWr10KPgoKLS0KVGhhbmtzLgpCaW5iaW4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFp
bGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVy
Cg==
