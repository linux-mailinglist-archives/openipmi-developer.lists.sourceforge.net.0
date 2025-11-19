Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8773EC79F00
	for <lists+openipmi-developer@lfdr.de>; Fri, 21 Nov 2025 15:05:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NDeH6iNW8D61McWM1cV5WSOajpIMutO0GEFQMMPq9zg=; b=J9XcTTzdcn4aRtORdZuoMxNP5U
	ZQIyN1oRXe9sEVJknEeWIaorHiuurIrrUW1Fh/t6qsk44b3sc/05kFuH2aVCVdMpX8jQ5Hfk3nvV3
	a7oQZO5dUr1Z84DmntLqK6MCa+q+lcf2zm8szr67LKx0/f0mdVWi/NIdZmU9Rg9dA1fE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vMRlB-0000ti-Ed;
	Fri, 21 Nov 2025 14:05:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mani@kernel.org>) id 1vLkRn-0003vt-4b
 for openipmi-developer@lists.sourceforge.net;
 Wed, 19 Nov 2025 15:50:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7O2g4846tq8kls7gP/YINxKDtYAFAKXKCZMK3zQST6I=; b=Uea74wMFz2pJ2i1HNkOiC4mbbv
 IV7mw52AhN1hTq1f72O6pyJXhIB0izM3yA9aRINjCdCpeUCLQLXvVpqt9vfLyR6CCWIZ4P3C6jYe4
 vO5uoBzaIPBFzu5Doe8d3tngQL6VT09BFXcTRRBcxEnjOJju4SkFbkn6OAeeA5wYbSkM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7O2g4846tq8kls7gP/YINxKDtYAFAKXKCZMK3zQST6I=; b=PXoApyFJ3TjtZE6eHfcAoU71l2
 zbsL0zlGvZ4Q0c2Xy92zA7nHoFiLsoBA2/tpK0T6tiC94BpvVnaDHsH9jGsrs8DL8b6QhIq3GGb8J
 DuWqWHG/ylApzFWHarijJWi/r2J7P0GqMQYBLp2i/V4tntHOfDxyqonPQoboPJo5RnLI=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vLkRm-0006Ai-De for openipmi-developer@lists.sourceforge.net;
 Wed, 19 Nov 2025 15:50:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C5CD641848;
 Wed, 19 Nov 2025 15:50:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3A51C2BCB0;
 Wed, 19 Nov 2025 15:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1763567407;
 bh=mtl+IHM/JXtrCO8ISnitiGZcya/g9fsTYHXlgtCEzjQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Laj4zYxhFW+Cyz8oEoGr4IEUQkfwUMdLv7HRG6pEmMXhq+vvRB62wNZAYyCBhwMgW
 ydZ26okaryoinvEE8tIJbLlJoY1/cMOVAl5gZWnUjbENpW2a9mfRw+vAlvoqjU3euP
 pbkZQ00ScKclvx/Fc7+VWCtde1BoO4ZllGxuhaaQ6oHWiJx30xfmdUGu2l8xqahHsp
 T+hG+IPeCO3xnQsYkJ7VatBdtqrEHMzKKg55/4DdSBYnYup2E2b5/XfowD8zPoAvGV
 SUjpmYocHoRKpWNGz1Ow4h6dPUUWYAJv0jrXiCMFF0CA6h8rz5TtzNJHhRm6MSXZFU
 PqBSfmBBhtEiA==
Date: Wed, 19 Nov 2025 21:19:25 +0530
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <wuyn4v625xw4n2jm4eiullfrprmjiw4aiwo4zudcp4ppd2yeva@s7vzfoinnavt>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-16-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113150217.3030010-16-andriy.shevchenko@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Nov 13, 2025 at 03:32:29PM +0100, Andy Shevchenko
 wrote: > Use %ptSp instead of open coded variants to print content of > struct
 timespec64 in human readable format. > > Acked-by: Bjorn Helgaa [...] 
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
X-Headers-End: 1vLkRm-0006Ai-De
X-Mailman-Approved-At: Fri, 21 Nov 2025 14:05:12 +0000
Subject: Re: [Openipmi-developer] [PATCH v3 15/21] PCI: epf-test: Switch to
 use %ptSp
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
From: Manivannan Sadhasivam via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, dri-devel@lists.freedesktop.org,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Max Kellermann <max.kellermann@ionos.com>, ceph-devel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Petr Mladek <pmladek@suse.com>, Lucas De Marchi <lucas.demarchi@intel.com>,
 Hans Verkuil <hverkuil+cisco@kernel.org>, Stefan Haberland <sth@linux.ibm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Sven Schnelle <svens@linux.ibm.com>, Alex Deucher <alexander.deucher@amd.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 freedreno@lists.freedesktop.org, Jan Hoeppner <hoeppner@linux.ibm.com>,
 linux-doc@vger.kernel.org, Gustavo Padovan <gustavo@padovan.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simona Vetter <simona@ffwll.ch>, linux-s390@vger.kernel.org,
 Calvin Owens <calvin@wbinvd.org>, Richard Cochran <richardcochran@gmail.com>,
 linux-media@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>,
 Satish Kharat <satishkh@cisco.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-arm-msm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linaro-mm-sig@lists.linaro.org, Casey Schaufler <casey@schaufler-ca.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-pci@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-trace-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-staging@lists.linux.dev,
 amd-gfx@lists.freedesktop.org, Karan Tilak Kumar <kartilak@cisco.com>,
 Ilya Dryomov <idryomov@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Corey Minyard <corey@minyard.net>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rodolfo Giometti <giometti@enneenne.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-mmc@vger.kernel.org,
 Sesidhar Baddela <sebaddel@cisco.com>, Sagi Maimon <maimon.sagi@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Niklas Cassel <cassel@kernel.org>,
 David Airlie <airlied@gmail.com>, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Heiko Carstens <hca@linux.ibm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Xiubo Li <xiubli@redhat.com>,
 intel-xe@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, netdev@vger.kernel.org,
 Jessica Zhang <jesszhan0024@gmail.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVGh1LCBOb3YgMTMsIDIwMjUgYXQgMDM6MzI6MjlQTSArMDEwMCwgQW5keSBTaGV2Y2hlbmtv
IHdyb3RlOgo+IFVzZSAlcHRTcCBpbnN0ZWFkIG9mIG9wZW4gY29kZWQgdmFyaWFudHMgdG8gcHJp
bnQgY29udGVudCBvZgo+IHN0cnVjdCB0aW1lc3BlYzY0IGluIGh1bWFuIHJlYWRhYmxlIGZvcm1h
dC4KPiAKPiBBY2tlZC1ieTogQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xlLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBBbmR5IFNoZXZjaGVua28gPGFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4Lmlu
dGVsLmNvbT4KCkFja2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbmlAa2VybmVsLm9y
Zz4KCi0gTWFuaQoKPiAtLS0KPiAgZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1l
cGYtdGVzdC5jIHwgNSArKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5j
dGlvbnMvcGNpLWVwZi10ZXN0LmMgYi9kcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvcGNp
LWVwZi10ZXN0LmMKPiBpbmRleCBiMDVlOGRiNTc1YzMuLmRlYmQyMzUyNTNjNSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvcGNpLWVwZi10ZXN0LmMKPiArKysg
Yi9kcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvcGNpLWVwZi10ZXN0LmMKPiBAQCAtMzMx
LDkgKzMzMSw4IEBAIHN0YXRpYyB2b2lkIHBjaV9lcGZfdGVzdF9wcmludF9yYXRlKHN0cnVjdCBw
Y2lfZXBmX3Rlc3QgKmVwZl90ZXN0LAo+ICAJCXJhdGUgPSBkaXY2NF91NjQoc2l6ZSAqIE5TRUNf
UEVSX1NFQywgbnMgKiAxMDAwKTsKPiAgCj4gIAlkZXZfaW5mbygmZXBmX3Rlc3QtPmVwZi0+ZGV2
LAo+IC0JCSAiJXMgPT4gU2l6ZTogJWxsdSBCLCBETUE6ICVzLCBUaW1lOiAlbGx1LiUwOXUgcywg
UmF0ZTogJWxsdSBLQi9zXG4iLAo+IC0JCSBvcCwgc2l6ZSwgZG1hID8gIllFUyIgOiAiTk8iLAo+
IC0JCSAodTY0KXRzLnR2X3NlYywgKHUzMil0cy50dl9uc2VjLCByYXRlKTsKPiArCQkgIiVzID0+
IFNpemU6ICVsbHUgQiwgRE1BOiAlcywgVGltZTogJXB0U3AgcywgUmF0ZTogJWxsdSBLQi9zXG4i
LAo+ICsJCSBvcCwgc2l6ZSwgZG1hID8gIllFUyIgOiAiTk8iLCAmdHMsIHJhdGUpOwo+ICB9Cj4g
IAo+ICBzdGF0aWMgdm9pZCBwY2lfZXBmX3Rlc3RfY29weShzdHJ1Y3QgcGNpX2VwZl90ZXN0ICpl
cGZfdGVzdCwKPiAtLSAKPiAyLjUwLjEKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqng
r40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVu
aXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
