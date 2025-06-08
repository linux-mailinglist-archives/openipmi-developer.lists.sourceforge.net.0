Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D141DAD1171
	for <lists+openipmi-developer@lfdr.de>; Sun,  8 Jun 2025 09:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EHzH9d2jOXMgVo+d7obgPPkuM8zhESGazQ/nSU2JRKQ=; b=Diov0P76U1ZeOSrvHh7Gm2Umq8
	EW88CsxjXf9HT3H1S/QPe15ILs5lSBOvzKBG08eOJ4Fs+3fnfVt+4QQ5H7yH8tWOCv6n3ln3inhGE
	+Q//MYv4baLCPYp9rGOotOX6NnMpPsS3IzXpvFBvU4CsUXEIheacyvNK5VpRNvolaipw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uOAZE-000892-K5;
	Sun, 08 Jun 2025 07:35:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chenhuacai@kernel.org>) id 1uOAZB-00088r-Tb
 for openipmi-developer@lists.sourceforge.net;
 Sun, 08 Jun 2025 07:35:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L6wSy+Py9eufD7P/Ip12ftarvoiCWDy4GEjbOKTH+DM=; b=RUw5+wZFtyGmxTzw8uZRiwa1A5
 gLQlUpmMh6ng2ojz79HG9WMJC5w9ql98sWlDLjvqc8Hb64wRYJmKv10K9G7fNJwBoO7TYYTSZ+1vO
 1UZvpA2ril3MLey0pMsN8GW2RVl7EvU287SBlz6rFLMM3aKGIzfSX6XhPYeeBbbxH2sw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L6wSy+Py9eufD7P/Ip12ftarvoiCWDy4GEjbOKTH+DM=; b=P8Um+0bcc1rf5OhKKLSwLsmhbY
 ZLStm0i6hdMQL0ALx4cPmgv4yLmfX7taQdu7TqU/gR6zsDPRp2j+m3IWBfR2fFso5x/duQkpso6Pm
 vpoxyRghJcwI08jRHPv245EwbJ4tgJJ9gcMih+ZiONiBvBMryxT9BDQznQ4QW2MMc1jM=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uOAZB-0005Xx-Ae for openipmi-developer@lists.sourceforge.net;
 Sun, 08 Jun 2025 07:35:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id D25334A68B
 for <openipmi-developer@lists.sourceforge.net>;
 Sun,  8 Jun 2025 07:35:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F4C9C4CEF0
 for <openipmi-developer@lists.sourceforge.net>;
 Sun,  8 Jun 2025 07:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1749368130;
 bh=kFOysKXG8GqTo4p3fFuz9+4KW4EIctx32RHzxS6qN+U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pYVdAu0JAuSLlkJBhgrHfhWdCkEE2K8yKsOkDOUTTil+d96yCCvSa+IX7+EqOOY+C
 zQRDypLyMfBgrToqv3etEFhsriXjkSbqSllccnRBkiBeasWVMdO5t7g9DHHafQdmSA
 BxxiEfSQ3sYZgBYhuFDXMCVYe+bpP4i1S4YYxIQFP84AxnfovXFOs4dE+OPi4M58tt
 cKaAnpqiCC6oPmArMgRKsRkiCFwL2gDkhoFuFjSQVpZhwIbOV+HZcfFJ76I5SQDLOd
 tweXFFnoNDTxgVhIUY7CHeocA+Zg3DWGjVtTaO3foYePZLoHCBIR/M0cqUyyed1dvG
 gPOFg9/CcJ29g==
Received: by mail-ed1-f48.google.com with SMTP id
 4fb4d7f45d1cf-60700a745e5so3727697a12.3
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 08 Jun 2025 00:35:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCWJEWWvnMohSraETwUZevOl6C+6pR+0pmAVkwZLAjOWt9jMyaHMpeSTXDAeUV3c5kuU9dhRszbXqdooj0R8w4sxL6I=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwcQm6V2kLb+K6Z8CpjpoE/WZI6Q7NgE4AfM/3y+8U7krRPlaPg
 99TS6JPS4ADq/cRoo22+p6rNgO4DJGn91HtpaN5l6bunoXBHEOhu47YWO1V43+SaoY+Z/O8AYoh
 HbAw7bNydj1te0xIT598uZbNWzTkZRQs=
X-Google-Smtp-Source: AGHT+IGXHk1U6rfYExFO/mc0/QqUnhoSlT+XQ9nCDnVpXOz/KSZJJ+E759KnH9foQHa4JG334VcHcgsqPOhLN7knhkg=
X-Received: by 2002:a05:6402:174d:b0:607:783e:5970 with SMTP id
 4fb4d7f45d1cf-607783e61fdmr5725488a12.8.1749368129125; Sun, 08 Jun 2025
 00:35:29 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1747276047.git.zhoubinbin@loongson.cn>
In-Reply-To: <cover.1747276047.git.zhoubinbin@loongson.cn>
Date: Sun, 8 Jun 2025 15:35:18 +0800
X-Gmail-Original-Message-ID: <CAAhV-H7kbuJfoUbD3XJVwpBZjcYtHZ6kWhFwu4HGjno6gkmSYA@mail.gmail.com>
X-Gm-Features: AX0GCFtdqkmwOqP8bVELz2Njdxh0gmwMM1ltahpWIc_beMymoC73koIQh5ivYvo
Message-ID: <CAAhV-H7kbuJfoUbD3XJVwpBZjcYtHZ6kWhFwu4HGjno6gkmSYA@mail.gmail.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Binbin, I have some small comments,
 you can add "Reviewed-by:
 Huacai Chen <chenhuacai@loongson.cn>" after you make changes. Huacai 
 Content analysis details:   (-0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uOAZB-0005Xx-Ae
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

SGksIEJpbmJpbiwKCkkgaGF2ZSBzb21lIHNtYWxsIGNvbW1lbnRzLCB5b3UgY2FuIGFkZCAiUmV2
aWV3ZWQtYnk6IEh1YWNhaSBDaGVuCjxjaGVuaHVhY2FpQGxvb25nc29uLmNuPiIgYWZ0ZXIgeW91
IG1ha2UgY2hhbmdlcy4KCkh1YWNhaQoKT24gVGh1LCBNYXkgMTUsIDIwMjUgYXQgMTA6MzLigK9B
TSBCaW5iaW4gWmhvdSA8emhvdWJpbmJpbkBsb29uZ3Nvbi5jbj4gd3JvdGU6Cj4KPiBIaSBhbGw6
Cj4KPiBUaGlzIHBhdGNoIHNldCBpbnRyb2R1Y2VzIHRoZSBMb29uZ3Nvbi0ySzA1MDAgQk1DLgo+
Cj4gSXQgaXMgYSBQQ0llIGRldmljZSBwcmVzZW50IG9uIHNlcnZlcnMgc2ltaWxhciB0byB0aGUg
TG9vbmdzb24tM0M2MDAwLgo+IEFuZCBpdCBpcyBhIG11bHRpZnVuY3Rpb25hbCBkZXZpY2UgKE1G
RCksIHN1Y2ggYXMgZGlzcGxheSBhcyBhIHN1Yi1mdW5jdGlvbgo+IG9mIGl0Lgo+Cj4gRm9yIElQ
TUksIGFjY29yZGluZyB0byB0aGUgZXhpc3RpbmcgZGVzaWduLCB3ZSB1c2Ugc29mdHdhcmUgc2lt
dWxhdGlvbiB0bwo+IGltcGxlbWVudCB0aGUgS0NTIGludGVyZmFjZSByZWdpc3RlcnM6IFN0YXV0
cy9Db21tYW5kL0RhdGFfT3V0L0RhdGFfSW4uCj4KPiBBbHNvIHNpbmNlIGJvdGggaG9zdCBzaWRl
IGFuZCBCTUMgc2lkZSByZWFkIGFuZCB3cml0ZSBrY3Mgc3RhdHVzLCB3ZSB1c2UKPiBmaWZvIHBv
aW50ZXIgdG8gZW5zdXJlIGRhdGEgY29uc2lzdGVuY3kuCj4KPiBGb3IgdGhlIGRpc3BsYXksIGJh
c2VkIG9uIHNpbXBsZWRybSwgdGhlIHJlc29sdXRpb24gaXMgcmVhZCBmcm9tIGEgZml4ZWQKPiBw
b3NpdGlvbiBpbiB0aGUgQk1DIHNpbmNlIHRoZSBoYXJkd2FyZSBkb2VzIG5vdCBzdXBwb3J0IGF1
dG8tZGV0ZWN0aW9uCj4gb2YgdGhlIHJlc29sdXRpb24uIE9mIGNvdXJzZSwgd2Ugd2lsbCB0cnkg
dG8gc3VwcG9ydCBtdWx0aXBsZQo+IHJlc29sdXRpb25zIGxhdGVyLCB0aHJvdWdoIGEgdmJpb3Mt
bGlrZSBhcHByb2FjaC4KPgo+IEVzcGVjaWFsbHksIGZvciB0aGUgQk1DIHJlc2V0IGZ1bmN0aW9u
LCBzaW5jZSB0aGUgZGlzcGxheSB3aWxsIGJlCj4gZGlzY29ubmVjdGVkIHdoZW4gQk1DIHJlc2V0
LCB3ZSBtYWRlIGEgc3BlY2lhbCB0cmVhdG1lbnQgb2YgcmUtcHVzaC4KPgo+IEJhc2VkIG9uIHRo
aXMsIEkgd2lsbCBwcmVzZW50IGl0IGluIGZvdXIgcGF0Y2hlczoKPiBwYXRjaC0xOiBCTUMgZGV2
aWNlIFBDSSByZXNvdXJjZSBhbGxvY2F0aW9uLgo+IHBhdGNoLTI6IElQTUkgaW1wbGVtZW50YXRp
b24KPiBwYXRjaC0zOiBkaXNwbGF5LCBiYXNlZCBvbiBzaW1wbGVkcm0KPiBwYXRjaC00OiBCTUMg
cmVib290IHN1cHBvcnQKPgo+IFRoYW5rcy4KPgo+IC0tLS0tLS0KPiBWMjoKPiAtIERyb3AgbHMy
a2RybSwgdXNlIHNpbXBsZWRybSBpbnN0ZWFkLgo+IFBhdGNoICgxLzMpOgo+ICAtIFVzZSBERUZJ
TkVfUkVTX01FTV9OQU1FRC9NRkRfQ0VMTF9SRVMgc2ltcGxpZmllZCBjb2RlOwo+ICAtIEFkZCBy
ZXNvbHV0aW9uIGZldGNoaW5nIGR1ZSB0byByZXBsYWNpbmcgdGhlIG9yaWdpbmFsIGRpc3BsYXkK
PiAgICBzb2x1dGlvbiB3aXRoIHNpbXBsZWRybTsKPiAgLSBBZGQgYXBlcnR1cmVfcmVtb3ZlX2Nv
bmZsaWN0aW5nX2RldmljZXMoKSB0byBhdm9pZCBlZmlmYgo+ICAgIGNvbmZsaWN0IHdpdGggc2lt
cGxlZHJtLgo+IFBhdGNoICgzLzMpOgo+ICAtIFRoaXMgcGFydCBvZiB0aGUgZnVuY3Rpb24sIG1v
dmVkIGZyb20gdGhlIG9yaWdpbmFsIGxzMmtkcm0gdG8gbWZkOwo+ICAtIFVzZSBzZXRfY29uc29s
ZSB0byBpbXBsZW1lbnQgdGhlIFJlLXB1c2ggZGlzcGxheSBmdW5jdGlvbi4KPgo+IExpbmsgdG8g
VjE6Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2NvdmVyLjE3MzU1NTAyNjkuZ2l0Lnpo
b3ViaW5iaW5AbG9vbmdzb24uY24vCj4KPiBCaW5iaW4gWmhvdSAoMyk6Cj4gICBtZmQ6IGxzMmti
bWM6IEludHJvZHVjZSBMb29uZ3Nvbi0ySyBCTUMgTUZEIENvcmUgZHJpdmVyCj4gICBpcG1pOiBB
ZGQgTG9vbmdzb24tMksgQk1DIHN1cHBvcnQKPiAgIG1mZDogbHMya2JtYzogQWRkIExvb25nc29u
LTJLIEJNQyByZXNldCBmdW5jdGlvbiBzdXBwb3J0Cj4KPiAgZHJpdmVycy9jaGFyL2lwbWkvTWFr
ZWZpbGUgICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3NpLmggICAgICB8
ICAgNyArCj4gIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfc2lfaW50Zi5jIHwgICAzICsKPiAgZHJp
dmVycy9jaGFyL2lwbWkvaXBtaV9zaV9sczJrLmMgfCAyNTAgKysrKysrKysrKysrKysrKysrKwo+
ICBkcml2ZXJzL21mZC9LY29uZmlnICAgICAgICAgICAgICB8ICAxMyArCj4gIGRyaXZlcnMvbWZk
L01ha2VmaWxlICAgICAgICAgICAgIHwgICAyICsKPiAgZHJpdmVycy9tZmQvbHMya2JtYy1tZmQu
YyAgICAgICAgfCAzOTggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICA3IGZpbGVz
IGNoYW5nZWQsIDY3NCBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2NoYXIvaXBtaS9pcG1pX3NpX2xzMmsuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9t
ZmQvbHMya2JtYy1tZmQuYwo+Cj4KPiBiYXNlLWNvbW1pdDogOWYyYjBjMTViNzUyYmI5NDBlMmVi
NjczN2JlZTMwZmZmOTZkOTZiNgo+IC0tCj4gMi40Ny4xCj4KPgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
