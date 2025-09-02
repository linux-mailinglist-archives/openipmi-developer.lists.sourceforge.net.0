Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB781B4077D
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Sep 2025 16:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U5zueQclrlFWU1lmYsMNgDJwijc2T90nCBuJ2zuZDHQ=; b=fuePcUgJtSZ0yNzPssc7kO9iwu
	RcXvAiT2c77FZ2oGzbKSYJ92VO9hJw8rTm8NOFQMZteqDm+cv2jF6wJRp0i3xGAxlhWKHDH9rEfeV
	wp58zwIH1HX3w9S0DH9T1TBcpuVb0GAjGB8+/KN0ALoosR4hl//97xgOoVjsOmT0v3WI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1utSIu-0000ZY-CL;
	Tue, 02 Sep 2025 14:48:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lee@kernel.org>) id 1utSIq-0000ZP-G1
 for openipmi-developer@lists.sourceforge.net;
 Tue, 02 Sep 2025 14:48:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QAx0MMb0y1BGE8qGD4PRBCdtkWYNKARoTLvgRWlbcaw=; b=fj4IYzuibVcVN6K7udrVZBdc94
 HlPYtcc5oD5QkOF4X12soEbpj3qJmakNIM4zDAXQdpzsaCHKZURS3ZwFT3Ls0/kzXIYxcMCwfVaFd
 84Pu7Vp3DCd0LafE5pO9OO47mRFGKW4pG5nvZXs5qasIfjtJMUf2H6+iRXrTCZqYcZCg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QAx0MMb0y1BGE8qGD4PRBCdtkWYNKARoTLvgRWlbcaw=; b=dlns/PeoSxgDl1HPE6Ya9CaUA5
 s6E9p22SVRuowGeqxLyrDxFLVwLPVs4IWGmpjgWcg8+lRwNYWEX2Q/aYmb4FCrM43aG2fZz07eGZb
 FFm9L+OeVDcg2fSi4jw1zmWxNzq9/Q3QFia9yhQovqk25ZZt66maScKQRyvk0X43dK5Y=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1utSIo-0000iL-IC for openipmi-developer@lists.sourceforge.net;
 Tue, 02 Sep 2025 14:48:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2BD6A4485C;
 Tue,  2 Sep 2025 14:47:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4207AC4CEED;
 Tue,  2 Sep 2025 14:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1756824476;
 bh=u/B4fahLYBxFs/OMMTF/mEgo4u7RMfWA04aEYQT0ffU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BVhD1i4kOWxPOzw124hLUYMiMxvpoO9v5skFKbyRbj10sqAYGV+7NEBn9YFZ9DoIQ
 qWl/6WCnh1pcr3qVgKZSxjBlNg0Ijdip9YAoZBnbRBFSL0+Ylw9sRsZ5zmqljHU7QN
 ZJzufZbLF21OSQbH5PV8264tiL2tdZz7bMiTR8rHDI23GYJ/vAfyEln+vDogVfbeOB
 sRZ5jasPKAjWOGS4pYCAcAUYxWaOnrg46do3Lep/e16CeZ58f2zYA00Jd6dpuxQLIQ
 hRF2anHq6mrQv1VPgVykJEv8w5tpLpyy30SI89Dz9x+O3MJQmHWB82arI3tvUPiNCb
 uU5bq/CJb0dXw==
Date: Tue, 2 Sep 2025 15:47:50 +0100
To: Binbin Zhou <zhoubinbin@loongson.cn>
Message-ID: <20250902144750.GT2163762@google.com>
References: <cover.1755853480.git.zhoubinbin@loongson.cn>
 <3bc527944947480aba00ee05cb5078080591e4b5.1755853480.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3bc527944947480aba00ee05cb5078080591e4b5.1755853480.git.zhoubinbin@loongson.cn>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 22 Aug 2025, Binbin Zhou wrote: > The Loongson-2K
 Board Management Controller provides an PCIe interface > to the host to access
 the feature implemented in the BMC. > > The BMC is assembled on a server
 similar to the server machine [...] 
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1utSIo-0000iL-IC
Subject: Re: [Openipmi-developer] [PATCH v10 1/3] mfd: ls2kbmc: Introduce
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

T24gRnJpLCAyMiBBdWcgMjAyNSwgQmluYmluIFpob3Ugd3JvdGU6Cgo+IFRoZSBMb29uZ3Nvbi0y
SyBCb2FyZCBNYW5hZ2VtZW50IENvbnRyb2xsZXIgcHJvdmlkZXMgYW4gUENJZSBpbnRlcmZhY2UK
PiB0byB0aGUgaG9zdCB0byBhY2Nlc3MgdGhlIGZlYXR1cmUgaW1wbGVtZW50ZWQgaW4gdGhlIEJN
Qy4KPiAKPiBUaGUgQk1DIGlzIGFzc2VtYmxlZCBvbiBhIHNlcnZlciBzaW1pbGFyIHRvIHRoZSBz
ZXJ2ZXIgbWFjaGluZSB3aXRoCj4gTG9vbmdzb24tMyBDUFUuIEl0IHN1cHBvcnRzIG11bHRpcGxl
IHN1Yi1kZXZpY2VzIGxpa2UgRFJNIGFuZCBJUE1JLgo+IAo+IENvLWRldmVsb3BlZC1ieTogQ2hv
bmcgUWlhbyA8cWlhb2Nob25nQGxvb25nc29uLmNuPgo+IFNpZ25lZC1vZmYtYnk6IENob25nIFFp
YW8gPHFpYW9jaG9uZ0Bsb29uZ3Nvbi5jbj4KPiBSZXZpZXdlZC1ieTogSHVhY2FpIENoZW4gPGNo
ZW5odWFjYWlAbG9vbmdzb24uY24+Cj4gQWNrZWQtYnk6IENvcmV5IE1pbnlhcmQgPGNvcmV5QG1p
bnlhcmQubmV0Pgo+IFNpZ25lZC1vZmYtYnk6IEJpbmJpbiBaaG91IDx6aG91YmluYmluQGxvb25n
c29uLmNuPgoKTG9va3MgZ29vZC4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9w
ZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2
ZWxvcGVyCg==
