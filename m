Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E971A515492
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Apr 2022 21:32:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nkWLX-0003YR-FF; Fri, 29 Apr 2022 19:32:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nkWLW-0003YK-Fk
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 19:32:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=juYOl8ucSjuSHKXBe+1Ir5OPZr6pZdgx66h4OReE1Ko=; b=mWm8vXv92ghC/K59yNACC5330O
 hLurHgKJcJDLlDO6G8h0c7/8//hJYu8vKZB6D0aSkpIUtGau8JXQUvNlz1KQP/gjRPuMT02khWqUL
 jP5bfJQJbZHQVQ250RZKvAouxmQc2mc87EfnxVQdmDQw/NDOX85NDQpNIMwBNZ06TGy0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=juYOl8ucSjuSHKXBe+1Ir5OPZr6pZdgx66h4OReE1Ko=; b=bKtZjS5h8E+V6w5oSpCvVGpDqe
 4TZCBuqrPaJZedQAOPpaDsDB+JOjeaSVbIip1wuaZe+zBEA+Zo2DyPKAZeIlbod9HZpzrLWI2MrCa
 aejhGXuafAJ2okX2vjgJRZnX+51cIiHjtrY/4AK65EgKYgU/8dVc0uwIfhqX9rlGRizU=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkWLQ-00EC7r-7O
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 19:32:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=juYOl8ucSjuSHKXBe+1Ir5OPZr6pZdgx66h4OReE1Ko=; b=pi8CeEHRcdz9D2M05lfyhONNOe
 Il5P/FNtKNDpfNnQvQkUO53LGYEhZ3HsOKcMT79tXUkEM7BDaPWYeiTRxruHlFJpgYZGLdkNZ+Vsx
 oyZivn3CQn+HYfOJsn02OXmy5/HYryfVse/FM/IqF31FwAMG26clpYwK7OV3zBWRhtbMoUne9k8x/
 cgyBslKy2FDshbzCm4dWwDcEIOqWM+BTXUAPCGsxBvDFlTKuVtiafdc18oTYk2LsBlxeiWqHf76sU
 fr20/x47wOCPaQYIMtyh+VGeHVXZk4bWHmVx7ebZUj8zme4Hs0U5M9F5U1lcdb0DAeivSR+YRjiw8
 sBGOVwOQ==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nkWKu-000A9h-7O; Fri, 29 Apr 2022 21:31:28 +0200
Message-ID: <039cdf14-efc5-383b-3f3d-294a5ed9243e@igalia.com>
Date: Fri, 29 Apr 2022 16:31:00 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Heiko Carstens <hca@linux.ibm.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-14-gpiccoli@igalia.com> <YmwyjMtT7QTZiHaa@osiris>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YmwyjMtT7QTZiHaa@osiris>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 29/04/2022 15:46, Heiko Carstens wrote: > [...] > > Code
 looks good, and everything still seems to work. I applied this > internally
 for the time being, and if it passes testing, I'll schedule > it [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nkWLQ-00EC7r-7O
Subject: Re: [Openipmi-developer] [PATCH 13/30] s390/consoles: Improve panic
 notifiers reliability
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
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 linux-xtensa@linux-xtensa.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, Alexander Gordeev <agordeev@linux.ibm.com>,
 will@kernel.org, tglx@linutronix.de, linux-leds@vger.kernel.org,
 linux-s390@vger.kernel.org, mikelley@microsoft.com, john.ogness@linutronix.de,
 bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org, fabiomirmar@gmail.com,
 x86@kernel.org, mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>, dyoung@redhat.com,
 vgoyal@redhat.com, Sven Schnelle <svens@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, pmladek@suse.com,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, gregkh@linuxfoundation.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, vkuznets@redhat.com,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 29/04/2022 15:46, Heiko Carstens wrote:
> [...]
> 
> Code looks good, and everything still seems to work. I applied this
> internally for the time being, and if it passes testing, I'll schedule
> it for the next merge window.
> 
> Thanks!

Perfect Heiko, thanks a bunch for your review and tests!
Let me know if anything breaks heh
Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
