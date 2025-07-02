Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A56AF5E7C
	for <lists+openipmi-developer@lfdr.de>; Wed,  2 Jul 2025 18:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SUpGN3fsdso0erN5JHotVSdSoQPQSI5ce6rBGiBsDVA=; b=WDLo6g2YrK1CSHZhdG0BQEnhfx
	LhWTKPOm/efIEOxht7RQnlMVCmYUgrtSts0twCb46mTjbXpo1T9nT8RpFfn0uzIwVCASbxudkBpJJ
	JdPD7J6U2t0/ica8oQ6bCOkxaK5mUGp7nNmUnqF5B4ETNuL7EOU0+QJtA7N9CJ9sJ79Y=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uX0F9-0005Zj-9a;
	Wed, 02 Jul 2025 16:23:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lee@kernel.org>) id 1uX0F8-0005Zd-3D
 for openipmi-developer@lists.sourceforge.net;
 Wed, 02 Jul 2025 16:23:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CVIaI6nPkTSEl/MmtnM0SUtorxQXJKo04I8eQbhkJHY=; b=Fslry4KXx6Ko+vauI7MsF3pIWz
 q1JpP9kAjD+yFmmS/hIueTtXb5KGGmzNGb/yEg8HPIKReLF9U1xGd4ZZ0k8OQXK4KW6WXvbUsGJVh
 biewkQTBu24/mUpTQs13SXi707Emb4qSo8h5jCEbbmDfcrZgOnBuSbOhckTk7WHUyzVE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CVIaI6nPkTSEl/MmtnM0SUtorxQXJKo04I8eQbhkJHY=; b=Ej6FVEBRTyutqXXxGGd5RmHvwk
 ForCWad+Hgn8vlOmWCcdW9sP+Jv8u1GVtlmDTbn2Mq73C/txZxg9ApVCpQZvTXqGJ3Xt5caM/vfMc
 ZFHF+Y1XDmaOmpnBdn5wcyIMnKoKHR37bqSGw7IKef2MO80pNEa4496tZ/w/T6MdAk+0=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uX0F7-0004SO-J6 for openipmi-developer@lists.sourceforge.net;
 Wed, 02 Jul 2025 16:23:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D827F6000A;
 Wed,  2 Jul 2025 16:23:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3ED8C4CEE7;
 Wed,  2 Jul 2025 16:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1751473403;
 bh=fYVUHcGXuXgCgpqOkZIAJT1XR4RaxdGG0zliMP2efjM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RsGEZ2Ceh+RsllyA1Uv4oQdkpwdt0S2EPdURLWB1uNlzdx9d0dusMscw3dW/aknlj
 COs92Rquf2x6maGv0YQEBRqzcFQG2Bky2wEMh0uAXrUS3Cu9w5Nmc785pYCRmNBHhN
 GpiMnUClAKWDGj6kJ6zQCGtivXPzfUf3BPjjGOH2aRcbcCsiC6Y2xb6kp837g9EVw4
 qGtE+dKJ4dKBqxLJJJD+OjtA6VDYkNRrOruXD5+pS6jEFYX4E4VMM8HSe49EXFvpuI
 CZv48pZGEOSsGc2YejCZgBlzjIpbGt06TuWzsIi4z8sbsjcZcuTbdS7iBZ9qV95f4h
 XTfGYDIstc/kw==
Date: Wed, 2 Jul 2025 17:23:18 +0100
To: kernel test robot <lkp@intel.com>
Message-ID: <20250702162318.GZ10134@google.com>
References: <78b06d1c7ae0677868e0c7498b589af163313c8d.1750939357.git.zhoubinbin@loongson.cn>
 <202507021011.sDAHGinj-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202507021011.sDAHGinj-lkp@intel.com>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 02 Jul 2025, kernel test robot wrote: > Hi Binbin,
 > > kernel test robot noticed the following build errors: > > [auto build
 test ERROR on 3d77b3cc7cc8115d89fa14eaf601e56372953484] > > url:
 https://github.com/intel-lab-lkp/linux/commits/B [...] 
 Content analysis details:   (-0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uX0F7-0004SO-J6
Subject: Re: [Openipmi-developer] [PATCH v6 2/3] mfd: ls2kbmc: Add
 Loongson-2K BMC reset function support
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
 Corey Minyard <minyard@acm.org>, Binbin Zhou <zhoubinbin@loongson.cn>,
 kexybiscuit@aosc.io, Binbin Zhou <zhoubb.aaron@gmail.com>, wangyao@lemote.com,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev,
 oe-kbuild-all@lists.linux.dev, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net, Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gV2VkLCAwMiBKdWwgMjAyNSwga2VybmVsIHRlc3Qgcm9ib3Qgd3JvdGU6Cgo+IEhpIEJpbmJp
biwKPiAKPiBrZXJuZWwgdGVzdCByb2JvdCBub3RpY2VkIHRoZSBmb2xsb3dpbmcgYnVpbGQgZXJy
b3JzOgo+IAo+IFthdXRvIGJ1aWxkIHRlc3QgRVJST1Igb24gM2Q3N2IzY2M3Y2M4MTE1ZDg5ZmEx
NGVhZjYwMWU1NjM3Mjk1MzQ4NF0KPiAKPiB1cmw6ICAgIGh0dHBzOi8vZ2l0aHViLmNvbS9pbnRl
bC1sYWItbGtwL2xpbnV4L2NvbW1pdHMvQmluYmluLVpob3UvbWZkLWxzMmtibWMtSW50cm9kdWNl
LUxvb25nc29uLTJLLUJNQy1jb3JlLWRyaXZlci8yMDI1MDYyNi0yMDMzNTMKPiBiYXNlOiAgIDNk
NzdiM2NjN2NjODExNWQ4OWZhMTRlYWY2MDFlNTYzNzI5NTM0ODQKPiBwYXRjaCBsaW5rOiAgICBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9yLzc4YjA2ZDFjN2FlMDY3Nzg2OGUwYzc0OThiNTg5YWYx
NjMzMTNjOGQuMTc1MDkzOTM1Ny5naXQuemhvdWJpbmJpbiU0MGxvb25nc29uLmNuCj4gcGF0Y2gg
c3ViamVjdDogW1BBVENIIHY2IDIvM10gbWZkOiBsczJrYm1jOiBBZGQgTG9vbmdzb24tMksgQk1D
IHJlc2V0IGZ1bmN0aW9uIHN1cHBvcnQKPiBjb25maWc6IHNwYXJjNjQtYWxsbW9kY29uZmlnICho
dHRwczovL2Rvd25sb2FkLjAxLm9yZy8wZGF5LWNpL2FyY2hpdmUvMjAyNTA3MDIvMjAyNTA3MDIx
MDExLnNEQUhHaW5qLWxrcEBpbnRlbC5jb20vY29uZmlnKQo+IGNvbXBpbGVyOiBzcGFyYzY0LWxp
bnV4LWdjYyAoR0NDKSAxNS4xLjAKPiByZXByb2R1Y2UgKHRoaXMgaXMgYSBXPTEgYnVpbGQpOiAo
aHR0cHM6Ly9kb3dubG9hZC4wMS5vcmcvMGRheS1jaS9hcmNoaXZlLzIwMjUwNzAyLzIwMjUwNzAy
MTAxMS5zREFIR2luai1sa3BAaW50ZWwuY29tL3JlcHJvZHVjZSkKPiAKPiBJZiB5b3UgZml4IHRo
ZSBpc3N1ZSBpbiBhIHNlcGFyYXRlIHBhdGNoL2NvbW1pdCAoaS5lLiBub3QganVzdCBhIG5ldyB2
ZXJzaW9uIG9mCj4gdGhlIHNhbWUgcGF0Y2gvY29tbWl0KSwga2luZGx5IGFkZCBmb2xsb3dpbmcg
dGFncwo+IHwgUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+
IHwgQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9vZS1rYnVpbGQtYWxsLzIwMjUwNzAy
MTAxMS5zREFIR2luai1sa3BAaW50ZWwuY29tLwo+IAo+IEFsbCBlcnJvcnMgKG5ldyBvbmVzIHBy
ZWZpeGVkIGJ5ID4+KToKPiAKPiAgICBkcml2ZXJzL21mZC9sczJrLWJtYy1jb3JlLmM6IEluIGZ1
bmN0aW9uICdsczJrX2JtY19wZGF0YV9pbml0aWFsJzoKPiA+PiBkcml2ZXJzL21mZC9sczJrLWJt
Yy1jb3JlLmM6MzQ5OjE1OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g
J2FjcGlfcmVnaXN0ZXJfZ3NpJyBbLVdpbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KPiAg
ICAgIDM0OSB8ICAgICAgICAgaXJxID0gYWNwaV9yZWdpc3Rlcl9nc2koTlVMTCwgZ3NpLCBBQ1BJ
X0VER0VfU0VOU0lUSVZFLCBBQ1BJX0FDVElWRV9MT1cpOwo+ICAgICAgICAgIHwgICAgICAgICAg
ICAgICBefn5+fn5+fn5+fn5+fn5+fgo+ID4+IGRyaXZlcnMvbWZkL2xzMmstYm1jLWNvcmUuYzoz
NzY6OTogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uICdhY3BpX3VucmVn
aXN0ZXJfZ3NpJzsgZGlkIHlvdSBtZWFuICdhcmNoX3VucmVnaXN0ZXJfY3B1Jz8gWy1XaW1wbGlj
aXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gICAgICAzNzYgfCAgICAgICAgIGFjcGlfdW5yZWdp
c3Rlcl9nc2koZ3NpKTsKPiAgICAgICAgICB8ICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fgo+
ICAgICAgICAgIHwgICAgICAgICBhcmNoX3VucmVnaXN0ZXJfY3B1CgpJcyB0aGlzIGVycm9yIHZh
bGlkPwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QK
T3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
