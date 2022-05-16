Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 066E65289F5
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 May 2022 18:12:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nqdKU-0001Qx-5r; Mon, 16 May 2022 16:12:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nqdKT-0001Qq-8K
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 16:12:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OZBRCsaeLLQD9CguIhK5Gsbv+Do9lNI4dRKnX3DnTVs=; b=hcjSd83qpj2Kvpc+zGrj8AzNwV
 kUastXAQaepAhI4o18CjJkvsxzuEk+mpIPLNSK9LFD/zj4FEUEe6Og2PUcSubpOAK3JgWdznbRVvM
 nm01rwcHzrKHeI9Cchn7bNv2i9rkiJUJebga65D3LcJrBDNCWRSrXMeglC8gwub6Zpkw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OZBRCsaeLLQD9CguIhK5Gsbv+Do9lNI4dRKnX3DnTVs=; b=bp4RFfQMEVcnF8cFDdkV729Yhr
 ygVwETqeQvZG4ekmiXgtfOCkQ8PCcjtBHlrjKPG7RCSoSzQGtN5jzDRZ/r3F3Z0hwlELfvX4IELMI
 4EgsyXCz2+3gN0+wtEa3Rn8LixwBRaMvAU4h2M8H6FFmZ+3Iae1NqbEdvDpWn+zvlzx4=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nqdKQ-0004EU-UD
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 16:12:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OZBRCsaeLLQD9CguIhK5Gsbv+Do9lNI4dRKnX3DnTVs=; b=cTAo65jHTM3B0ITLRt2mTe+qMi
 Mgnedog4ec+puSbe0nyROSa19Q4JMc3jLrINzY75lEJgN4ZnZLbXRnbU9VgE7MZjNWhyf408I+eF0
 UZsTZ4wldMCBZxElXn52I0DKJCfHcNJLOcsxnTRMPLlShL9EHMOqzRahK2vVGGFXB6RnGo8XEEJPO
 gpyhtwCxU0EgZFBR09A8u7wGxD5xH5ep8p3kCFTe8PlGSgTOkVsHijQweIsXqaGaP95QgkavUlo4N
 GY9l6sOGeJeiAc+wGG54Szh2/VK5I4c73G47OXj82SsENDkfCXLscQrlJiBmPFlo290c84ZDH/amA
 F9S82K0A==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nqdK8-006sYA-BV; Mon, 16 May 2022 18:11:56 +0200
Message-ID: <41bede24-2bc4-a85b-9ba0-0f2562f8d0ca@igalia.com>
Date: Mon, 16 May 2022 13:11:25 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-26-gpiccoli@igalia.com> <YoJmKYLzPZqCDDim@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YoJmKYLzPZqCDDim@alley>
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 16/05/2022 11:56, Petr Mladek wrote: > [...] > I really
 like both changes. Just please split it them into two > patchset. I mean
 one patch for the new "panic_console_replay" > parameter and 2nd tha [...]
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nqdKQ-0004EU-UD
Subject: Re: [Openipmi-developer] [PATCH 25/30] panic,
 printk: Add console flush parameter and convert panic_print to a
 notifier
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
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, bp@alien8.de, luto@kernel.org,
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

On 16/05/2022 11:56, Petr Mladek wrote:
> [...]
> I really like both changes. Just please split it them into two
> patchset. I mean one patch for the new "panic_console_replay"
> parameter and 2nd that moves "printk_info" into the notifier.
> 

OK sure, will do that in V2.
Thanks,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
