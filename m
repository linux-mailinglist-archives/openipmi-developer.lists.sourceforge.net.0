Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B01225131C5
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 12:57:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nk1pg-0002Wt-RN; Thu, 28 Apr 2022 10:57:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rdunlap@infradead.org>) id 1njsKN-0004aT-Lk
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Apr 2022 00:48:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oTHdXx/bNqvs0tUKZg1jX0QKDhKts3seYpf9QVBefoo=; b=cNJe/zw9h+nTptMla5iO7ng587
 /lm378nU3cQccMao+jcc0vy3ebR25QS0OuRzAWy/cZTiUQ2FB99DKz+MZ+rV2RkThJ0L1XdLaGnAx
 4DzNndXT4hlGTLam8iwwR7xsg/Qgpi91zfyxYTO1n8bM/SmWh395q2jlfCNtGT8lPuTs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oTHdXx/bNqvs0tUKZg1jX0QKDhKts3seYpf9QVBefoo=; b=K/84KRAetfribBArbi4xmvPqgZ
 zPAXfiiHguv6SMe1pl0AC8FTCHkD1OSJt1hOjpqFSHJcwpiXcZDfc3GW1kglMtEcS04KXAJ2yMdQh
 KwrD9i+iOac8ochS/14XbrT5MDof2ZKxbNk1Ko2FqxZLeGNZj1OxRP7KxZBL1OX7peJ4=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njsKM-00CCzv-5T
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Apr 2022 00:48:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=oTHdXx/bNqvs0tUKZg1jX0QKDhKts3seYpf9QVBefoo=; b=GN1/nse5iki/WFV8HZE7gnZx8M
 eJUoKq0F73m9M9r3NgIBqsY0+vw93A0bLY3hZk7W2z6ntNRxf9y3czUAh8lb6xtyiL6iRkCGoMbr3
 13t311Tat608CEGCcNXVW95sxa2A683FvRnnoYsLI49dqQLiYKn/y05pL/vMxI0Bf3XOAu94o11W+
 nn9qk8zdTyrvuFjTnWtZ6o7af2OgOBH9Lb3syZMjRdfGkSipXa4zeUfKnDbho+LORacM3SyNN4LMV
 DjLIUchKFzC9+E73n2pj1o853yXO/ZfWMQcrLme864qTb5ygY07AwvTErV57FcFGuv7kOYC61ZuBl
 QQvKsP1Q==;
Received: from [2601:1c0:6280:3f0::aa0b]
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njs1D-00B2Sy-UA; Thu, 28 Apr 2022 00:28:28 +0000
Message-ID: <4fe85e9c-4e96-e9d5-9fd8-f062bafcda4f@infradead.org>
Date: Wed, 27 Apr 2022 17:28:11 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>, akpm@linux-foundation.org,
 bhe@redhat.com, pmladek@suse.com, kexec@lists.infradead.org
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-25-gpiccoli@igalia.com>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20220427224924.592546-25-gpiccoli@igalia.com>
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/27/22 15:49,
 Guilherme G. Piccoli wrote: > + crash_kexec_post_notifiers
 > + This was DEPRECATED - users should always prefer the This is DEPRECATED
 - users should always prefer the > + parameter "panic_notifiers_level" -
 check its entry > + in this documentation for details on how it works. > +
 Setting this parameter is exactly the same as setting > +
 "panic_notifiers_level=4".
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -1.9 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1njsKM-00CCzv-5T
X-Mailman-Approved-At: Thu, 28 Apr 2022 10:57:12 +0000
Subject: Re: [Openipmi-developer] [PATCH 24/30] panic: Refactor the panic
 path
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
 linux-pm@vger.kernel.org, coresight@lists.linaro.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 4/27/22 15:49, Guilherme G. Piccoli wrote:
> +	crash_kexec_post_notifiers
> +			This was DEPRECATED - users should always prefer the

			This is DEPRECATED - users should always prefer the

> +			parameter "panic_notifiers_level" - check its entry
> +			in this documentation for details on how it works.
> +			Setting this parameter is exactly the same as setting
> +			"panic_notifiers_level=4".

-- 
~Randy


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
