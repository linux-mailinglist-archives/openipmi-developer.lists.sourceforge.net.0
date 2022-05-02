Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAE0517348
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 May 2022 17:51:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nlYKa-0001zo-R6; Mon, 02 May 2022 15:51:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nlYKZ-0001zi-Eq
 for openipmi-developer@lists.sourceforge.net; Mon, 02 May 2022 15:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vs1TxitJVaqXfZt5+JAgzgpJc3Rl9y+sqSF7sQt0958=; b=WNwgHLh7BgQ6HlbnJztAn7WAmo
 A56sOccYJ1tLjq7XjCZT9xxXHiANhYMZHwrT39XvMLpNZ7Ef7EBQE02B2xbD264hsjfaiz8NXuE64
 Td1o/Ors8SeUQmtwyBuddODWzq6APcDn8CJV4hiWX7gH4VaxQENEZ3QNlW8yDLLvE8C0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vs1TxitJVaqXfZt5+JAgzgpJc3Rl9y+sqSF7sQt0958=; b=hFZJTSOf6FjI37Ch0oWfzab4f3
 YanlBwcWBcK9F6INscgaH/jf+l2MpfFF8rpzXADpA6DmMB33DHlL97jxWXwF603IdG+jGcKXjYrBE
 78guVsBiXE0kM5Yvj0PzN/svBpDRTxENN73idT0DbU3mGLPtjdN0YD961DCG3BMXL0Kc=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nlYKY-00GgPn-U7
 for openipmi-developer@lists.sourceforge.net; Mon, 02 May 2022 15:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vs1TxitJVaqXfZt5+JAgzgpJc3Rl9y+sqSF7sQt0958=; b=CYM+I+cStAj6nsmkdvAL01St6e
 IV8WQNLOxWhy3UHpXhc9ZYxNJzq7ZxpyOwHWort+30gmSz14Tjb7K8kvM2hGR2PPX3dc7GXMEaskm
 g34Tjq/8qIJgML47/2DCuEUnFB03pqMfnk/uwmQB09CDWgBvh7TL/gFDoH0TI9HOJ3bezLUV1DrKv
 MwXxD9LKMhdDIB0wdDr6Kr32RysL68LVvKOkDfa5SERbORMzBS0ZyutauBA2Ekqa3472ChMBhe54V
 1FaXK1lleaqm8beFaaq7IO5wyd2Jb5T5RV+lvaTO/6luDzRXN43duubtlHaOQOQQCOGaRTF8O2nxl
 BUemy2kw==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nlYKD-0006x9-MY; Mon, 02 May 2022 17:51:01 +0200
Message-ID: <af03a6ef-6b92-31cd-72d4-47b82bc47f87@igalia.com>
Date: Mon, 2 May 2022 12:50:35 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Florian Fainelli <f.fainelli@gmail.com>, akpm@linux-foundation.org,
 bhe@redhat.com, pmladek@suse.com, kexec@lists.infradead.org
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-16-gpiccoli@igalia.com>
 <eaf3a893-00dd-8717-202e-911b395670e1@gmail.com>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <eaf3a893-00dd-8717-202e-911b395670e1@gmail.com>
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 02/05/2022 12:38,
 Florian Fainelli wrote: > [...] > > Acked-by:
 Florian Fainelli <f.fainelli@gmail.com> > > Not sure if the Fixes tag is
 warranted however as this is a clean up, > and not really fi [...] 
 Content analysis details:   (-1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.6 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nlYKY-00GgPn-U7
Subject: Re: [Openipmi-developer] [PATCH 15/30] bus: brcmstb_gisb: Clean-up
 panic/die notifiers
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
 gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, linux-edac@vger.kernel.org, jgross@suse.com,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, kernel@gpiccoli.net,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 Brian Norris <computersforpeace@gmail.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 02/05/2022 12:38, Florian Fainelli wrote:
> [...] 
> 
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> 
> Not sure if the Fixes tag is warranted however as this is a clean up, 
> and not really fixing a bug.

Perfect, thanks Florian. I'll add your ACK and remove the fixes tag in V2.
Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
