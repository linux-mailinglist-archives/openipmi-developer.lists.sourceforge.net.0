Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1EDAC24C7
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 May 2025 16:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wmIC8jalSn0ToWAXv0JaUKH6JvWDuKPFFQkXF2YFW5s=; b=XnhcOLk1AgA10NdyN7YT6GBKpv
	owAtNM2nciMFY5gCRB/mO0Q2AtnK8eVYNTE4dz68pn6YRY/V7T6B29tRs1RKxCO2YLTu621J7knmq
	OXaZr0N+mjCdnK58ANpagSAYQWDyhrzTVePFqS/VLnAV7KgjvU7hylZR+hgXzVziKtXk=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uIT8F-0005KX-AT;
	Fri, 23 May 2025 14:12:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chenhuacai@kernel.org>) id 1uIMjt-0007ok-4j
 for openipmi-developer@lists.sourceforge.net;
 Fri, 23 May 2025 07:22:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KHLNDf89Ls1Fo4pmVvaAXcKQh+SLKRcaSavxnWJjF10=; b=aKEvRDUDP88LtWt9or0ZhSwfsm
 sPdixWP6A/GkYWihVkk+UURG7k/wXvoTrPJxt6avWL2mSDlF/U1Fdd+MoA51Zt2ebITvtz4xDbYLU
 01vFBv1oWoMdi3gUJYmnIAYfgwaUuQLTDodCaInh8OdG11bkVS9Lf4m3ewScEMtH7Lxw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KHLNDf89Ls1Fo4pmVvaAXcKQh+SLKRcaSavxnWJjF10=; b=MAhF+wvFLLgbWNZF3gHb7g8le1
 8iWaG2X0CFPUoe+OqkOQpLBeLzazpDlmEGVeSCKFqhB+sYBEJfstFmR+UVhNKxnWFG4fxOd9aafV3
 8PDmUK245icLvEDcdCoa9rxqep++DEVerMyheZYtki75WEPlnUv0VE8bvLfhK2r8faFI=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uIMjs-0003AL-Hn for openipmi-developer@lists.sourceforge.net;
 Fri, 23 May 2025 07:22:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id E434EA4F06B
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 23 May 2025 07:22:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 902CFC4CEE9
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 23 May 2025 07:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1747984953;
 bh=tuioU+OPVB/j+l5HhU9lH6WKAt09AxviKSoCNdWubi0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BeltacrExPsoF+lh1Mmy9NjESoueGiFkD4wMBihkl68/+uu4ysdSIMuj3jyzFQj0E
 WDGrOp/H7km/ZFFT4X8lstCAI0YSANYWy2mpniZ9JrTkj+p7KnPmEfYGiuaYwdrNnY
 HPDZfKI62Ygb2xjPM2NvZoxTOZMCiaDqZ6mNWefYSKh7LuF8QtHFayiQ+AwPQr1oiP
 v/sEV06+RHmqL47AiGItuPPZ2EeLFa65SzaZ8BeOAX2a7cgVSUq+gf21cmYR66zxhy
 4QiDZoZVzLdJ53GxEU+ZRJnTXKswghb9nUsy9of9T91Ib/h/j9ltZhNz4pa1tWUeSH
 bK0GwN1WsZ4nA==
Received: by mail-ej1-f42.google.com with SMTP id
 a640c23a62f3a-acb39c45b4eso1238461166b.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 23 May 2025 00:22:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCXYLuUl7TmZLqvP6iM1GSdbMnHCJWDorhv1uidDhPug3BPA8h7I+88F69gf8Ejbaxls90tDj0BDdupZ1vJxt/DyOgM=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzLM0di4iUJ2OfqtJJKVTwo+BJxEWyZ2QD330Nn0n4X2rhEVNCH
 4qNEo+FU84eiu1wQLdfpjQ4+JIlMuDxYRe2fFtvC34jZ/CjYoQxYeTn0yTVBeaaxEEKafLxYi69
 3dW/7SWC62FrP0L8nAwElB4rduZQ1D1I=
X-Google-Smtp-Source: AGHT+IHQTgjtXnc5cnWqsIAsDU5VMGNpE+2kQItoslTSc2AwaPLsqSiPdWKMx+kg0u+W2t4nt9DBgyN4BYwQ8oMDFT8=
X-Received: by 2002:a17:906:6a14:b0:ad2:46b2:78b2 with SMTP id
 a640c23a62f3a-ad52d4c49b2mr2573495566b.18.1747984952212; Fri, 23 May 2025
 00:22:32 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1747276047.git.zhoubinbin@loongson.cn>
In-Reply-To: <cover.1747276047.git.zhoubinbin@loongson.cn>
Date: Fri, 23 May 2025 15:22:21 +0800
X-Gmail-Original-Message-ID: <CAAhV-H4R+A6BMcyXfZDGy3qRj-fht_0bhnTxsTjV1Dn+_j7Pwg@mail.gmail.com>
X-Gm-Features: AX0GCFt6kbI6guhdzdH99UqXfBs9OSW8Xwu6Z9QBglM8mDcsOlWvTRv1GT_WMMQ
Message-ID: <CAAhV-H4R+A6BMcyXfZDGy3qRj-fht_0bhnTxsTjV1Dn+_j7Pwg@mail.gmail.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>
X-Spam-Score: -3.9 (---)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Binbin,
 The title of this series can be unified from Loongson-2K500/Loongson-2K
 to LS2K. Huacai 
 Content analysis details:   (-3.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -1.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uIMjs-0003AL-Hn
X-Mailman-Approved-At: Fri, 23 May 2025 14:12:05 +0000
Subject: Re: [Openipmi-developer] [PATCH v2 0/3] LoongArch: Add
 Loongson-2K0500 BMC support
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
From: Huacai Chen via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Huacai Chen <chenhuacai@kernel.org>
Cc: Corey Minyard <minyard@acm.org>, Binbin Zhou <zhoubb.aaron@gmail.com>,
 Lee Jones <lee@kernel.org>, linux-kernel@vger.kernel.org,
 loongarch@lists.linux.dev, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net, Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGksIEJpbmJpbiwKClRoZSB0aXRsZSBvZiB0aGlzIHNlcmllcyBjYW4gYmUgdW5pZmllZCBmcm9t
IExvb25nc29uLTJLNTAwL0xvb25nc29uLTJLIHRvIExTMksuCgpIdWFjYWkKCk9uIFRodSwgTWF5
IDE1LCAyMDI1IGF0IDEwOjMy4oCvQU0gQmluYmluIFpob3UgPHpob3ViaW5iaW5AbG9vbmdzb24u
Y24+IHdyb3RlOgo+Cj4gSGkgYWxsOgo+Cj4gVGhpcyBwYXRjaCBzZXQgaW50cm9kdWNlcyB0aGUg
TG9vbmdzb24tMkswNTAwIEJNQy4KPgo+IEl0IGlzIGEgUENJZSBkZXZpY2UgcHJlc2VudCBvbiBz
ZXJ2ZXJzIHNpbWlsYXIgdG8gdGhlIExvb25nc29uLTNDNjAwMC4KPiBBbmQgaXQgaXMgYSBtdWx0
aWZ1bmN0aW9uYWwgZGV2aWNlIChNRkQpLCBzdWNoIGFzIGRpc3BsYXkgYXMgYSBzdWItZnVuY3Rp
b24KPiBvZiBpdC4KPgo+IEZvciBJUE1JLCBhY2NvcmRpbmcgdG8gdGhlIGV4aXN0aW5nIGRlc2ln
biwgd2UgdXNlIHNvZnR3YXJlIHNpbXVsYXRpb24gdG8KPiBpbXBsZW1lbnQgdGhlIEtDUyBpbnRl
cmZhY2UgcmVnaXN0ZXJzOiBTdGF1dHMvQ29tbWFuZC9EYXRhX091dC9EYXRhX0luLgo+Cj4gQWxz
byBzaW5jZSBib3RoIGhvc3Qgc2lkZSBhbmQgQk1DIHNpZGUgcmVhZCBhbmQgd3JpdGUga2NzIHN0
YXR1cywgd2UgdXNlCj4gZmlmbyBwb2ludGVyIHRvIGVuc3VyZSBkYXRhIGNvbnNpc3RlbmN5Lgo+
Cj4gRm9yIHRoZSBkaXNwbGF5LCBiYXNlZCBvbiBzaW1wbGVkcm0sIHRoZSByZXNvbHV0aW9uIGlz
IHJlYWQgZnJvbSBhIGZpeGVkCj4gcG9zaXRpb24gaW4gdGhlIEJNQyBzaW5jZSB0aGUgaGFyZHdh
cmUgZG9lcyBub3Qgc3VwcG9ydCBhdXRvLWRldGVjdGlvbgo+IG9mIHRoZSByZXNvbHV0aW9uLiBP
ZiBjb3Vyc2UsIHdlIHdpbGwgdHJ5IHRvIHN1cHBvcnQgbXVsdGlwbGUKPiByZXNvbHV0aW9ucyBs
YXRlciwgdGhyb3VnaCBhIHZiaW9zLWxpa2UgYXBwcm9hY2guCj4KPiBFc3BlY2lhbGx5LCBmb3Ig
dGhlIEJNQyByZXNldCBmdW5jdGlvbiwgc2luY2UgdGhlIGRpc3BsYXkgd2lsbCBiZQo+IGRpc2Nv
bm5lY3RlZCB3aGVuIEJNQyByZXNldCwgd2UgbWFkZSBhIHNwZWNpYWwgdHJlYXRtZW50IG9mIHJl
LXB1c2guCj4KPiBCYXNlZCBvbiB0aGlzLCBJIHdpbGwgcHJlc2VudCBpdCBpbiBmb3VyIHBhdGNo
ZXM6Cj4gcGF0Y2gtMTogQk1DIGRldmljZSBQQ0kgcmVzb3VyY2UgYWxsb2NhdGlvbi4KPiBwYXRj
aC0yOiBJUE1JIGltcGxlbWVudGF0aW9uCj4gcGF0Y2gtMzogZGlzcGxheSwgYmFzZWQgb24gc2lt
cGxlZHJtCj4gcGF0Y2gtNDogQk1DIHJlYm9vdCBzdXBwb3J0Cj4KPiBUaGFua3MuCj4KPiAtLS0t
LS0tCj4gVjI6Cj4gLSBEcm9wIGxzMmtkcm0sIHVzZSBzaW1wbGVkcm0gaW5zdGVhZC4KPiBQYXRj
aCAoMS8zKToKPiAgLSBVc2UgREVGSU5FX1JFU19NRU1fTkFNRUQvTUZEX0NFTExfUkVTIHNpbXBs
aWZpZWQgY29kZTsKPiAgLSBBZGQgcmVzb2x1dGlvbiBmZXRjaGluZyBkdWUgdG8gcmVwbGFjaW5n
IHRoZSBvcmlnaW5hbCBkaXNwbGF5Cj4gICAgc29sdXRpb24gd2l0aCBzaW1wbGVkcm07Cj4gIC0g
QWRkIGFwZXJ0dXJlX3JlbW92ZV9jb25mbGljdGluZ19kZXZpY2VzKCkgdG8gYXZvaWQgZWZpZmIK
PiAgICBjb25mbGljdCB3aXRoIHNpbXBsZWRybS4KPiBQYXRjaCAoMy8zKToKPiAgLSBUaGlzIHBh
cnQgb2YgdGhlIGZ1bmN0aW9uLCBtb3ZlZCBmcm9tIHRoZSBvcmlnaW5hbCBsczJrZHJtIHRvIG1m
ZDsKPiAgLSBVc2Ugc2V0X2NvbnNvbGUgdG8gaW1wbGVtZW50IHRoZSBSZS1wdXNoIGRpc3BsYXkg
ZnVuY3Rpb24uCj4KPiBMaW5rIHRvIFYxOgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9j
b3Zlci4xNzM1NTUwMjY5LmdpdC56aG91YmluYmluQGxvb25nc29uLmNuLwo+Cj4gQmluYmluIFpo
b3UgKDMpOgo+ICAgbWZkOiBsczJrYm1jOiBJbnRyb2R1Y2UgTG9vbmdzb24tMksgQk1DIE1GRCBD
b3JlIGRyaXZlcgo+ICAgaXBtaTogQWRkIExvb25nc29uLTJLIEJNQyBzdXBwb3J0Cj4gICBtZmQ6
IGxzMmtibWM6IEFkZCBMb29uZ3Nvbi0ySyBCTUMgcmVzZXQgZnVuY3Rpb24gc3VwcG9ydAo+Cj4g
IGRyaXZlcnMvY2hhci9pcG1pL01ha2VmaWxlICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9jaGFy
L2lwbWkvaXBtaV9zaS5oICAgICAgfCAgIDcgKwo+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3Np
X2ludGYuYyB8ICAgMyArCj4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfbHMyay5jIHwgMjUw
ICsrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9tZmQvS2NvbmZpZyAgICAgICAgICAgICAg
fCAgMTMgKwo+ICBkcml2ZXJzL21mZC9NYWtlZmlsZSAgICAgICAgICAgICB8ICAgMiArCj4gIGRy
aXZlcnMvbWZkL2xzMmtibWMtbWZkLmMgICAgICAgIHwgMzk4ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysKPiAgNyBmaWxlcyBjaGFuZ2VkLCA2NzQgaW5zZXJ0aW9ucygrKQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zaV9sczJrLmMKPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL2xzMmtibWMtbWZkLmMKPgo+Cj4gYmFzZS1jb21taXQ6
IDlmMmIwYzE1Yjc1MmJiOTQwZTJlYjY3MzdiZWUzMGZmZjk2ZDk2YjYKPiAtLQo+IDIuNDcuMQo+
Cj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVu
aXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
b3BlbmlwbWktZGV2ZWxvcGVyCg==
