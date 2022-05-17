Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E20052AB96
	for <lists+openipmi-developer@lfdr.de>; Tue, 17 May 2022 21:08:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nr2YE-0000aL-8n; Tue, 17 May 2022 19:08:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tony.luck@intel.com>) id 1nr2YC-0000aF-J1
 for openipmi-developer@lists.sourceforge.net; Tue, 17 May 2022 19:08:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dMu3qmaQOzDmPfmmDPn/58HAfnv205GwUCrX1kk3ZHk=; b=l93jZJ9jRPICUSKPO5xE0ii32+
 k1Y02FAVYJRKxgls/3dYW6ir0tRm6G5Edff1bo/1fVS/HTPpdYfifclzUOVBIcQg/ffJuG4NIWdCr
 Hb/dpyNHqDCqn0g+bRPGEr5bgo+Wxj3ysgTonCNz/nORG2wm23bYmaNWek2Erzc4gCmo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dMu3qmaQOzDmPfmmDPn/58HAfnv205GwUCrX1kk3ZHk=; b=JJIciahaLDtLvF1HPj5I1dfsmM
 Nc/Htt31S076ccgw4u+IQWs4o7g4WTL6q1C1uQ6ZuwAW5x2sFcndWXQ2KSrS+gWYG7Bqn4vtgCfTu
 ihd2wA2xi6SyVMQfIT8+oGns/7MNhcbJK7rIQDIiZQaCyvrvGXnXbyV6HYyIjsMdx2RQ=;
Received: from mga06b.intel.com ([134.134.136.31] helo=mga06.intel.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nr2Y8-000439-N4
 for openipmi-developer@lists.sourceforge.net; Tue, 17 May 2022 19:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652814484; x=1684350484;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dMu3qmaQOzDmPfmmDPn/58HAfnv205GwUCrX1kk3ZHk=;
 b=OSqH4QH8JuXjPkwFMtUPlkSqYVhayHjUZkmTh50D+ryd9OrUGliUJP/V
 6Mxu2mPL3YU0NoBf+Ja/sYR5cXhdhM7vIqwdbkcqhDNItKSaf2lykVUiE
 WFIchuJQGYEptXTJwtTrbt+RY/9UxbJDrRoTaQ0LKX7iQSDINinT5ygjo
 oRxaAF7A3YeNKJP6zVJxWcv/M19SrMp+RviatPiNAKFiVJJM30A/d9cqd
 i/RbHggVpeinCXWHpPT8LoFAJAlIpj0evRLpGBw+fKg+n8Wj//hceO6nZ
 /ONkx0fnKLoGbZz6OlkqIuWeejSF2qJxHSyZyr97vCdTwKBqGIw0ySa4V Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="331909225"
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="331909225"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 12:07:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="605497608"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2022 12:07:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 17 May 2022 12:07:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 17 May 2022 12:07:55 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Tue, 17 May 2022 12:07:55 -0700
From: "Luck, Tony" <tony.luck@intel.com>
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>, Petr Mladek
 <pmladek@suse.com>, Dinh Nguyen <dinguyen@kernel.org>
Thread-Topic: [PATCH 21/30] panic: Introduce the panic pre-reboot notifier list
Thread-Index: AQHYWooLnXaT7guJw0OCpuGv/IkEoK0iJCSAgAAZuAD//40QkIAAesuAgAFqbACAACtDgP//jcxAgACKZID//5nyAA==
Date: Tue, 17 May 2022 19:07:54 +0000
Message-ID: <7f9f6feb9f494b0288deab718807172d@intel.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-22-gpiccoli@igalia.com> <YoJgcC8c6LaKADZV@alley>
 <63a74b56-89ef-8d1f-d487-cdb986aab798@igalia.com>
 <bed66b9467254a5a8bafc1983dad643a@intel.com>
 <e895ce94-e6b9-caf6-e5d3-06bf0149445c@igalia.com> <YoOs9GJ5Ovq63u5Q@alley>
 <599b72f6-76a4-8e6d-5432-56fb1ffd7e0b@igalia.com>
 <06d85642fef24bc482642d669242654b@intel.com>
 <62a63fc2-346f-f375-043a-fa21385279df@igalia.com>
In-Reply-To: <62a63fc2-346f-f375-043a-fa21385279df@igalia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > What I'm planning to do in the altera_edac notifier is:
 > > if (kdump_is_set) > return; Yes. That's what I think should happen. -Tony
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nr2Y8-000439-N4
Subject: Re: [Openipmi-developer] [PATCH 21/30] panic: Introduce the panic
 pre-reboot notifier list
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Pavel Machek <pavel@ucw.cz>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>, Matt
 Turner <mattst88@gmail.com>, Christian Borntraeger <borntraeger@linux.ibm.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>,
 "luto@kernel.org" <luto@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 Alex Elder <elder@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "senozhatsky@chromium.org" <senozhatsky@chromium.org>,
 "d.hatayama@jp.fujitsu.com" <d.hatayama@jp.fujitsu.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sven Schnelle <svens@linux.ibm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, Stefano
 Stabellini <sstabellini@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 Corey Minyard <minyard@acm.org>, Helge Deller <deller@gmx.de>,
 "vgoyal@redhat.com" <vgoyal@redhat.com>,
 "mhiramat@kernel.org" <mhiramat@kernel.org>, Vasily
 Gorbik <gor@linux.ibm.com>,
 "linux-xtensa@linux-xtensa.org" <linux-xtensa@linux-xtensa.org>,
 "john.ogness@linutronix.de" <john.ogness@linutronix.de>,
 "hidehiro.kawai.ez@hitachi.com" <hidehiro.kawai.ez@hitachi.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Chris Zankel <chris@zankel.net>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 James Morse <james.morse@arm.com>,
 "kernel-dev@igalia.com" <kernel-dev@igalia.com>,
 "fabiomirmar@gmail.com" <fabiomirmar@gmail.com>,
 "halves@canonical.com" <halves@canonical.com>,
 "alejandro.j.jimenez@oracle.com" <alejandro.j.jimenez@oracle.com>, "Tang,
 Feng" <feng.tang@intel.com>, "will@kernel.org" <will@kernel.org>,
 "bhe@redhat.com" <bhe@redhat.com>, "corbet@lwn.net" <corbet@lwn.net>,
 Dexuan Cui <decui@microsoft.com>, "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "arnd@arndb.de" <arnd@arndb.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "rcu@vger.kernel.org" <rcu@vger.kernel.org>, "bp@alien8.de" <bp@alien8.de>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "mikelley@microsoft.com" <mikelley@microsoft.com>, "H. Peter
 Anvin" <hpa@zytor.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 "linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, Richard
 Weinberger <richard@nod.at>, "x86@kernel.org" <x86@kernel.org>,
 "mingo@redhat.com" <mingo@redhat.com>, "dyoung@redhat.com" <dyoung@redhat.com>,
 "paulmck@kernel.org" <paulmck@kernel.org>, Heiko
 Carstens <hca@linux.ibm.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 "jgross@suse.com" <jgross@suse.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kernel@gpiccoli.net" <kernel@gpiccoli.net>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 "vkuznets@redhat.com" <vkuznets@redhat.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> What I'm planning to do in the altera_edac notifier is:
>
> if (kdump_is_set)
>   return;

Yes. That's what I think should happen.

-Tony

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
