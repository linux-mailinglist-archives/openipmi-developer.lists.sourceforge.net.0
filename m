Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D96B592E5
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 Sep 2025 12:04:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vDhLwD71AUza1R2n6KejJv3ujinh+B6OisHZ3dqYKww=; b=js96rnnMA7aB/JDL3+FfCpzL0D
	CGADAu/aQ7D/HhZVY/P1EB4YuBq7P9ussL9CFX+RjLPzNbFnvUFQJFVHUSzCCQqnylyuHWd5LDed8
	6c5jbhpPZheePutqzFFTQjX74yKfq7zfW7QMD/2n9RKPUIFGu6QmxYmMRZOQoZBXu6k4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uySYJ-0004K2-TK;
	Tue, 16 Sep 2025 10:04:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubb.aaron@gmail.com>) id 1uySYI-0004Jm-3a
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 10:04:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xvq0oFtPmi38XNhelZdp7JrUmNikqA6Z70LwGViEgDA=; b=hVUe5LyJOa6bfOObBKWNCdrpWe
 Ho5waXTksBM6p88t+eAlXtWjhBAxuv8Aj1O4jOabE76GV2yLcn7kmTSPK+kwVWtOnWcJUg1zMeBLY
 n/8ob1aYAybkP0beea39cOlinN6QRoVMBdxLNibYXYcS3DQsYnMbC/XwQAryAJ2ae9C0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Xvq0oFtPmi38XNhelZdp7JrUmNikqA6Z70LwGViEgDA=; b=US027OxeZ13/qKVNB6VzKKkSqJ
 9eBmh7znOZvEvIW0sFumb7vvvbDmE3ecVttK79ccfM6rvSZvwgB9+FbugQkRdDigMXDVtrgst8eSz
 YsMt4lPuaw/Z75AuEMXZsyO+dEfVhKBwy4aaSt9jdmC/y63dUZW05WQj2XA4dtot8jmY=;
Received: from mail-ed1-f46.google.com ([209.85.208.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uySYI-0004x8-D6 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Sep 2025 10:04:46 +0000
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-6228de280a4so2418910a12.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 16 Sep 2025 03:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758017075; x=1758621875; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Xvq0oFtPmi38XNhelZdp7JrUmNikqA6Z70LwGViEgDA=;
 b=JhX7pXyMVK4cYlrKkvNhXHFPzvunIdLvtk0IN6l9PgVskn/7wlacsKfxJE1jcTztl+
 b/h/AN5WKA2uy1rfdg6qA2Do1JsWBFFwDguibtNv++eVE1Nqi9wzxVRIQsT2qp5AiYpZ
 k5U/Ku8sy5nSF7gdCx7SdufkuGyXSZCobBV6Yuim8V+4UH9UaUBcqIif/BHGM+qQHx/C
 KYwVsK85M1lma23rsil6cu7v901MVfhaJFZiCPbxzKgG7o0GyDxAX/wTyeHr8KLVE47H
 RfBh51x42vCtKTL2flL1zWQobD3SKQzqNO/apFlm3OuIkcYSpdt1lhf1UvGVBe1/+Rut
 siXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758017075; x=1758621875;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Xvq0oFtPmi38XNhelZdp7JrUmNikqA6Z70LwGViEgDA=;
 b=MuR6on4XkctUH5joGJP5IqLcDl/cIL3TaY8aYH3YV6wAwaVvyGHx4BVexpPKIwD87r
 WCCaTRjVW0WTTULNSDDklWkoMfHIrVKUuE9piDS19U1ZqwucG0fX7Gdxoe5t5GvgkKKZ
 gBEHxyhmMSmHZKMJG8aEn5DJaTMpP3225HlOij4iNsFNa5RvXl/pQMPheOZyprW0BNiT
 NtX/EZ31eKGlWF3tDzeReXcT1IFfQv5pNzfrCaxTGEmliZKMoL+Kz+IxUJqD9kK5rHu4
 n2YqBxp2HQ564cZkj5DO4i7hjQYnZuveWw+tfLLW8IEgr3Xy0oehZLOUK0Mv0xpPkgi7
 UGcw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVDzWrvu4XPuEHiNe+J2KtEW9BLxQijwMnNPm5R/7xzUVX5OgvKC9tiXtx+kOlo1V+boGqUAixDlfIH7s2NCdA6rXg=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyYN4qa/T1PtnyoeqY9tJyynYAA6GfjYXtLcc8i9V23wlqYGXzS
 V3zg32KvP2k9Su2LUVlIY4LPM3K4QTRFqhFEfbx6CnaTiZluqx9DgH7BBAx2XMZ0d2AlMZ169uz
 wweHvyFNFu9zqw8ZBB3WQb42RLi3aWV4=
X-Gm-Gg: ASbGnctjybl7fgkEKJjMmiNvO3J7uZTkxAlDNgDHhO7ly4fLnBmd4XMQngp0t19CHwN
 OZFyYzpVcWKx92c8QQ7ecE9Pa8OMQOdIhRzGMVAbOHCxo+JrJJ3Cs7l9cfW7y/tNVSfXQA8TXE4
 HXEJ4vTj30DNHJpu1sEyxbqckbZERWE/c0LFnJXPoXASSNyN0e0v1nyx37bd1FqDUJDNvuYVuJb
 ga3XDk=
X-Google-Smtp-Source: AGHT+IEPxRjXpipLqO1hanLT4Es6XaecDmd6j0Gs7/wn2Tp86zqgVa2ychH1gW5ousYZhRv8X6WtLF5xIPq0D+5VGFU=
X-Received: by 2002:a05:6402:1e93:b0:62f:2afa:60e6 with SMTP id
 4fb4d7f45d1cf-62f2afa64a9mr8308237a12.7.1758017074551; Tue, 16 Sep 2025
 03:04:34 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1756987761.git.zhoubinbin@loongson.cn>
 <175760122164.1552180.16853979882678693472.b4-ty@kernel.org>
 <CAMpQs4JbQU3D-Bs2687BXSC=FKJBS6RMvWAKb6AJEtzit6hWqw@mail.gmail.com>
 <20250916084002.GF1637058@google.com>
In-Reply-To: <20250916084002.GF1637058@google.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Tue, 16 Sep 2025 18:04:21 +0800
X-Gm-Features: AS18NWANjn2G57nOU62SNxRQ6bZ8lIjTtYZPiruAZN2iRv_YMwXDLOAyZ_D0zcI
Message-ID: <CAMpQs4+J2zYgZaGYBSaf4UwzKZY-qMoD1oe2vmgJQXAfghqu=w@mail.gmail.com>
To: Lee Jones <lee@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Lee: Thanks for your reply. On Tue, Sep 16, 2025 at 4:40
 PM Lee Jones wrote: > > On Fri, 12 Sep 2025, Binbin Zhou wrote: > > > Hi
 Lee: > > > > On Thu, Sep 11, 2025 at 10:33 PM Lee Jones wrote: > > > > > >
 On Thu, 04 Sep 2025 [...] 
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
 [209.85.208.46 listed in wl.mailspike.net]
X-Headers-End: 1uySYI-0004x8-D6
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

SGkgTGVlOgoKVGhhbmtzIGZvciB5b3VyIHJlcGx5LgoKT24gVHVlLCBTZXAgMTYsIDIwMjUgYXQg
NDo0MOKAr1BNIExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gRnJpLCAx
MiBTZXAgMjAyNSwgQmluYmluIFpob3Ugd3JvdGU6Cj4KPiA+IEhpIExlZToKPiA+Cj4gPiBPbiBU
aHUsIFNlcCAxMSwgMjAyNSBhdCAxMDozM+KAr1BNIExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+
IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBUaHUsIDA0IFNlcCAyMDI1IDIwOjM1OjA0ICswODAwLCBC
aW5iaW4gWmhvdSB3cm90ZToKPiA+ID4gPiBUaGlzIHBhdGNoc2V0IGludHJvZHVjZXMgdGhlIExv
b25nc29uLTJLIEJNQy4KPiA+ID4gPgo+ID4gPiA+IEl0IGlzIGEgUENJZSBkZXZpY2UgcHJlc2Vu
dCBvbiBzZXJ2ZXJzIHNpbWlsYXIgdG8gdGhlIExvb25nc29uLTMgQ1BVcy4KPiA+ID4gPiBBbmQg
aXQgaXMgYSBtdWx0aWZ1bmN0aW9uYWwgZGV2aWNlIChNRkQpLCBzdWNoIGFzIGRpc3BsYXkgYXMg
YSBzdWItZnVuY3Rpb24KPiA+ID4gPiBvZiBpdC4KPiA+ID4gPgo+ID4gPiA+IEZvciBJUE1JLCBh
Y2NvcmRpbmcgdG8gdGhlIGV4aXN0aW5nIGRlc2lnbiwgd2UgdXNlIHNvZnR3YXJlIHNpbXVsYXRp
b24gdG8KPiA+ID4gPiBpbXBsZW1lbnQgdGhlIEtDUyBpbnRlcmZhY2UgcmVnaXN0ZXJzOiBTdGF1
dHMvQ29tbWFuZC9EYXRhX091dC9EYXRhX0luLgo+ID4gPiA+Cj4gPiA+ID4gWy4uLl0KPiA+ID4K
PiA+ID4gQXBwbGllZCwgdGhhbmtzIQo+ID4gPgo+ID4gPiBbMS8zXSBtZmQ6IGxzMmtibWM6IElu
dHJvZHVjZSBMb29uZ3Nvbi0ySyBCTUMgY29yZSBkcml2ZXIKPiA+ID4gICAgICAgY29tbWl0OiA2
N2MyNjM5ZTFmYzFhMDdiNDVkMjE2YWY2NTljMGRkOTJhMzcwYzY4Cj4gPiA+IFsyLzNdIG1mZDog
bHMya2JtYzogQWRkIExvb25nc29uLTJLIEJNQyByZXNldCBmdW5jdGlvbiBzdXBwb3J0Cj4gPiA+
ICAgICAgIGNvbW1pdDogMjM2NGNjYzgyN2U0NDA2NGU5NzYzZjJhZTJkMWRjYzVmOTQ1ZmRmMwo+
ID4KPiA+IFRoYW5rcyBmb3IgYWNrbm93bGVkZ2luZyBteSBwYXRjaHNldC4KPiA+Cj4gPiBJIGNh
bid0IGNvbmZpcm0gd2h5IHlvdSBkaWRuJ3QgYXBwbHkgdGhlIElQTUkgcGF0Y2gsIGJ1dCB0aGlz
IGFwcGVhcnMKPiA+IHRvIGJyZWFrIHRoZSBwYXRjaHNldCdzIGludGVncml0eSwgcG90ZW50aWFs
bHkgY2F1c2luZyBtaXNzaW5nIEtjb25maWcKPiA+IGRlcGVuZGVuY2llcyAoSVBNSV9MUzJLIHNl
bGVjdCBNRkRfTFMyS19CTUNfQ09SRSkuCj4KPiBQcmV0dHkgc3VyZSB0aGlzIGRvZXNuJ3QgYnJl
YWsgYW55dGhpbmcuCj4KPiBXaGF0IGJ1aWxkIGVycm9ycyBkbyB5b3Ugc2VlIGFzIGEgcmVzdWx0
Pwo+Cj4gPiBBZGRpdGlvbmFsbHksIGFzIENvcmV5IHByZXZpb3VzbHkgZXhwbGFpbmVkWzFdLCB0
aGlzIHBhdGNoIGNhbiBiZQo+ID4gYXBwbGllZCB0aHJvdWdoIHlvdXIgc2lkZS4KPiA+Cj4gPiBb
MV06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9hRlZ0TkFZNHUyZ0RpTERTQG1haWwubWlu
eWFyZC5uZXQvCj4KPiBXZSBvbmx5IGFwcGx5IGNyb3NzLXN1YnN5c3RlbSBwYXRjaC1zZXRzIHRv
IGEgc2luZ2xlIHRyZWUgaWYgdGhlcmUgYXJlCj4gZ29vZCByZWFzb25zIHRvIGRvIHNvLiAgSW4g
dGhpcyBpbnN0YW5jZSwgSSBjYW4ndCBzZWUgYW55IHJlYXNvbiB3aHkgdGhlCj4gSVBNSSBkcml2
ZXIgY2Fubm90IGdvIGluIHZpYSBpdCdzIG93biByZXBvLgoKSG93ZXZlciwgdGhlcmUgc3RpbGwg
c2VlbXMgdG8gYmUgYSB0ZXh0IGRlcGVuZGVuY3kgaXNzdWUuIFRoZSBJUE1JCnBhdGNoIG1vZGlm
aWVzIHRoZSBNQUlOVEFJTkVSUywgd2hpY2ggZGVwZW5kcyBvbiB0aGUgZmlyc3QgcGF0Y2guCklm
IHRoZSBlbnRpcmUgc2VyaWVzIG9mIHBhdGNoZXMgY2Fubm90IGJlIG1lcmdlZCB0b2dldGhlciwg
ZG9lcyB0aGlzCm1lYW4gdGhlIElQTUkgcGF0Y2ggY2FuIG9ubHkgYmUgbWVyZ2VkIGFmdGVyIHRo
ZSBNRkQgcGF0Y2ggaGFzIGJlZW4KbWVyZ2VkIGludG8gdGhlIG1haW5saW5lPwoKPgo+IC0tCj4g
TGVlIEpvbmVzIFvmnY7nkLzmlq9dCgotLSAKVGhhbmtzLgpCaW5iaW4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFp
bGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVy
Cg==
