Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A34CB536F5
	for <lists+openipmi-developer@lfdr.de>; Thu, 11 Sep 2025 17:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-Id:References:
	In-Reply-To:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I33UyrpJAvumSMZ0doRojnMitMPVkaUZbL0bBA+7PdE=; b=c4LVMNcEmhNZpf4ASiZORgQ04p
	w73Lm4tV4Fgu/fjtKSRMVoi3IpZbBOlwZvrUXxA0ZDabZF3qWMl0Cq/47X3dMD45t9UHX863p5iSj
	IwO3MA9U3qiQMHkHDiSUIQQ0p88jkTjn15OtWiURSd3qsLrrV3s+9djmh9ZHouSAP/+w=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uwiuK-000441-No;
	Thu, 11 Sep 2025 15:08:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <None@aws-us-west-2-korg-mail-1.web.codeaurora.org>)
 id 1uwiuJ-00043u-Gb for openipmi-developer@lists.sourceforge.net;
 Thu, 11 Sep 2025 15:08:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Gnn+qCVHrZd8R128ks9ZIMSgTPMtLpvO2ipl6pT80M=; b=jekQe1sUCcEqDbgqFRm+3TT92g
 rpF+utKLbcP+QLJPJv1mVTQEFpYb0Vj5Aju3X+L2LuyY+OAH+F79vYGfZdNXetdadblKpyKK4lW0v
 J12NDY4eW7n/nlsKb9IFf4SvPZM0M1AyreowYDy5+6/IgL9c2t9lUYR25jaa6IAceQqc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-Id:
 Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7Gnn+qCVHrZd8R128ks9ZIMSgTPMtLpvO2ipl6pT80M=; b=VVhKIblgKZHq+TPwc3Kl//VEfy
 Pq0XIKfbKuN2qpIUt3AlCLBowf/Am0+W6cj1wPFz+9YXPl1TS8ugrVliyHT2nTVuTp1FThyGGK6dM
 9KLXFQ/NNbkYV3fjT43qbDzZO7rxdtMEEu4jVKemjlQPgPoGY0cqlUx3Qcaky6h5g0aM=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uwiuJ-0003V0-4X for openipmi-developer@lists.sourceforge.net;
 Thu, 11 Sep 2025 15:08:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 623A060248;
 Thu, 11 Sep 2025 14:33:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCCE4C4CEF1;
 Thu, 11 Sep 2025 14:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1757601224;
 bh=ev0kH+F4I4aR6tb2Y8LgzgF7MQQFKIRMaQAG06rDm/0=;
 h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
 b=GfmtpwANiJZnUEikmMTN/7lHgpKrD+U0DENh1FJRZ2C1uiy1wAzbL4yJdmzIG0tMb
 hoFe/9JIQ811KSg1nA5wvQ5oa526Kh4yO4dAh73TSBayGh5CVwCQeHkpL5NEsK+P5D
 lN/nyZIvyakH5mq/o6yWjwXP2x4oOcZxZ3wYQGhvGSm5aVaZ24/OzUEg2OzKpyIjCl
 +rHJPH4xrouQZZTE6vfaSL0hXMDYIA8IjTgI11zMlqPIykwYc2JK+/MBmlClso7dcI
 oP6KFl00kHKE72FS4ycn1YK/76uy/MeM5xhpgTUPK2bLF2uXlwc17siUbmwFoRFxJX
 0owaH42L7xglw==
To: Binbin Zhou <zhoubb.aaron@gmail.com>, Lee Jones <lee@kernel.org>, 
 Corey Minyard <minyard@acm.org>, Huacai Chen <chenhuacai@kernel.org>, 
 Binbin Zhou <zhoubinbin@loongson.cn>
In-Reply-To: <cover.1756987761.git.zhoubinbin@loongson.cn>
References: <cover.1756987761.git.zhoubinbin@loongson.cn>
Message-Id: <175760122164.1552180.16853979882678693472.b4-ty@kernel.org>
Date: Thu, 11 Sep 2025 15:33:41 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-c81fc
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 04 Sep 2025 20:35:04 +0800, Binbin Zhou wrote: > This
 patchset introduces the Loongson-2K BMC. > > It is a PCIe device present
 on servers similar to the Loongson-3 CPUs. > And it is a multifun [...] 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uwiuJ-0003V0-4X
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
From: Lee Jones via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Lee Jones <lee@kernel.org>
Cc: jeffbai@aosc.io, kexybiscuit@aosc.io, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev, wangyao@lemote.com,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVGh1LCAwNCBTZXAgMjAyNSAyMDozNTowNCArMDgwMCwgQmluYmluIFpob3Ugd3JvdGU6Cj4g
VGhpcyBwYXRjaHNldCBpbnRyb2R1Y2VzIHRoZSBMb29uZ3Nvbi0ySyBCTUMuCj4gCj4gSXQgaXMg
YSBQQ0llIGRldmljZSBwcmVzZW50IG9uIHNlcnZlcnMgc2ltaWxhciB0byB0aGUgTG9vbmdzb24t
MyBDUFVzLgo+IEFuZCBpdCBpcyBhIG11bHRpZnVuY3Rpb25hbCBkZXZpY2UgKE1GRCksIHN1Y2gg
YXMgZGlzcGxheSBhcyBhIHN1Yi1mdW5jdGlvbgo+IG9mIGl0Lgo+IAo+IEZvciBJUE1JLCBhY2Nv
cmRpbmcgdG8gdGhlIGV4aXN0aW5nIGRlc2lnbiwgd2UgdXNlIHNvZnR3YXJlIHNpbXVsYXRpb24g
dG8KPiBpbXBsZW1lbnQgdGhlIEtDUyBpbnRlcmZhY2UgcmVnaXN0ZXJzOiBTdGF1dHMvQ29tbWFu
ZC9EYXRhX091dC9EYXRhX0luLgo+IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3MhCgpbMS8zXSBt
ZmQ6IGxzMmtibWM6IEludHJvZHVjZSBMb29uZ3Nvbi0ySyBCTUMgY29yZSBkcml2ZXIKICAgICAg
Y29tbWl0OiA2N2MyNjM5ZTFmYzFhMDdiNDVkMjE2YWY2NTljMGRkOTJhMzcwYzY4ClsyLzNdIG1m
ZDogbHMya2JtYzogQWRkIExvb25nc29uLTJLIEJNQyByZXNldCBmdW5jdGlvbiBzdXBwb3J0CiAg
ICAgIGNvbW1pdDogMjM2NGNjYzgyN2U0NDA2NGU5NzYzZjJhZTJkMWRjYzVmOTQ1ZmRmMwoKLS0K
TGVlIEpvbmVzIFvmnY7nkLzmlq9dCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWkt
ZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
