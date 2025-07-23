Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABB8B0F2FF
	for <lists+openipmi-developer@lfdr.de>; Wed, 23 Jul 2025 15:06:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4GxFBDlcg9w420RbwiiYC3n/7q96bkFMmdrHx5y88ek=; b=d9SMLkpf/vlLTI3B50ZEBgyaIe
	lCCg8NqXbnXypFDYHt2I3OzlLfTbglg8IYvrK/Nrmxfi/D72ryQCNHtAaOOQDKoKo6hFpmfRkgDgH
	5qHC/FOlw/8kGH7e4+eYV27pT59QU5KSpqKVOET3zpUOzCT8J26FrRs4zDz1N6EtNx0w=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ueZBI-0006wj-4j;
	Wed, 23 Jul 2025 13:06:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lee@kernel.org>) id 1ueZB8-0006w4-1L
 for openipmi-developer@lists.sourceforge.net;
 Wed, 23 Jul 2025 13:06:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ag9TlWhlMeI5ifB0D+oyk5krdCnltZfVaVK6QxkIVOM=; b=lZfdhe1VYer9qQcRmSTvrsBPHq
 EDm04JoazNva49b+isS/TOuH/rCz2oAdf2M8RZnCS+Eojj3LXmG22PSKkWloj+2jCbX18nh96ooMY
 u4GJg0Srvfe0XVtyZ6F6l9D4vM/Z1u7mqRcipL8V6VIPMDU7WxVnuKcgHzd6FbDI+IjE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ag9TlWhlMeI5ifB0D+oyk5krdCnltZfVaVK6QxkIVOM=; b=RuBaoXzBYIQVWkqOe/2iqPdbiF
 dH92zuV8CoqIg12I0qQ2mbqXad+mcBqEbstqgFULrxfIqltzaZHz4f7rHYKSxNDQ63vsFEjrYJpNR
 JWY78m7mqecHqL0MJX9x4Mx8mpkUm7Q9m/4hlXOoodHr+etMTMbbnrld1M9JaR2tAmOE=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ueZB8-0003tv-Ds for openipmi-developer@lists.sourceforge.net;
 Wed, 23 Jul 2025 13:06:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7F050601D3;
 Wed, 23 Jul 2025 13:06:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 824D4C4CEF5;
 Wed, 23 Jul 2025 13:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1753275987;
 bh=waIKXZS7SvDvppXRvapNC1Nk0LZTcv2EgEsK4+ZpodI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cQjgY9Z0Gw2L7ctORUaD16dUg5UHtBOWD0Z+pG9R0+nOPXQnV/dgb2+Mc0kakzDlt
 IQezkekl7TfnfWJW6hLbRGlq2kPh2y0yPVaxZCjIpbGIuIO4DP4QpBg4nmspeoSDkr
 4KC92AUdbKGhXcMkat/DFYAOFmhPSUTGxcmj1oWBGcydSzzSaOOJaC1D0SJU0+/nV9
 W/OgamsmmeVqFVN9AGlKc7msmX+kQvwW3RywLv05af878exEPVy0cQHQkZXlcaTXTC
 dKCjtNUKcM02vP4RO0gnyaNt0CkfC3BtqsDO5gMU+q3T+DCjTOfXt1h/0HF1ML1HIj
 FZiOC6zH+1Lig==
Date: Wed, 23 Jul 2025 14:06:21 +0100
To: Binbin Zhou <zhoubinbin@loongson.cn>
Message-ID: <20250723130621.GV11056@google.com>
References: <cover.1752548073.git.zhoubinbin@loongson.cn>
 <8066e0deddcb774f2e411aa420fcf72894ff097d.1752548073.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8066e0deddcb774f2e411aa420fcf72894ff097d.1752548073.git.zhoubinbin@loongson.cn>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 15 Jul 2025, Binbin Zhou wrote: > The Loongson-2K
 Board Management Controller provides an PCIe interface > to the host to access
 the feature implemented in the BMC. > > The BMC is assembled on a server
 similar to the server machine [...] 
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ueZB8-0003tv-Ds
Subject: Re: [Openipmi-developer] [PATCH v8 1/3] mfd: ls2kbmc: Introduce
 Loongson-2K BMC core driver
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
From: Lee Jones via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Lee Jones <lee@kernel.org>
Cc: Chong Qiao <qiaochong@loongson.cn>, jeffbai@aosc.io,
 Corey Minyard <minyard@acm.org>, kexybiscuit@aosc.io,
 Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, Corey Minyard <corey@minyard.net>,
 loongarch@lists.linux.dev, wangyao@lemote.com, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net, Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCAxNSBKdWwgMjAyNSwgQmluYmluIFpob3Ugd3JvdGU6Cgo+IFRoZSBMb29uZ3Nvbi0y
SyBCb2FyZCBNYW5hZ2VtZW50IENvbnRyb2xsZXIgcHJvdmlkZXMgYW4gUENJZSBpbnRlcmZhY2UK
PiB0byB0aGUgaG9zdCB0byBhY2Nlc3MgdGhlIGZlYXR1cmUgaW1wbGVtZW50ZWQgaW4gdGhlIEJN
Qy4KPiAKPiBUaGUgQk1DIGlzIGFzc2VtYmxlZCBvbiBhIHNlcnZlciBzaW1pbGFyIHRvIHRoZSBz
ZXJ2ZXIgbWFjaGluZSB3aXRoCj4gTG9vbmdzb24tMyBDUFUuIEl0IHN1cHBvcnRzIG11bHRpcGxl
IHN1Yi1kZXZpY2VzIGxpa2UgRFJNIGFuZCBJUE1JLgo+IAo+IENvLWRldmVsb3BlZC1ieTogQ2hv
bmcgUWlhbyA8cWlhb2Nob25nQGxvb25nc29uLmNuPgo+IFNpZ25lZC1vZmYtYnk6IENob25nIFFp
YW8gPHFpYW9jaG9uZ0Bsb29uZ3Nvbi5jbj4KPiBSZXZpZXdlZC1ieTogSHVhY2FpIENoZW4gPGNo
ZW5odWFjYWlAbG9vbmdzb24uY24+Cj4gQWNrZWQtYnk6IENvcmV5IE1pbnlhcmQgPGNvcmV5QG1p
bnlhcmQubmV0Pgo+IFNpZ25lZC1vZmYtYnk6IEJpbmJpbiBaaG91IDx6aG91YmluYmluQGxvb25n
c29uLmNuPgo+IC0tLQo+ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgfCAgIDYgKysKPiAg
ZHJpdmVycy9tZmQvS2NvbmZpZyAgICAgICAgIHwgIDEzICsrKwo+ICBkcml2ZXJzL21mZC9NYWtl
ZmlsZSAgICAgICAgfCAgIDIgKwo+ICBkcml2ZXJzL21mZC9sczJrLWJtYy1jb3JlLmMgfCAxODkg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDQgZmlsZXMgY2hhbmdlZCwg
MjEwIGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL2xzMmst
Ym1jLWNvcmUuYwoKTG9va3MgZ29vZC4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZl
bG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWkt
ZGV2ZWxvcGVyCg==
