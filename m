Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB78552EABB
	for <lists+openipmi-developer@lfdr.de>; Fri, 20 May 2022 13:25:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ns0kd-0005Do-Mv; Fri, 20 May 2022 11:24:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1ns0kc-0005Dh-MW
 for openipmi-developer@lists.sourceforge.net; Fri, 20 May 2022 11:24:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DGPrrkXTp6oI8cbbgByz5QLKv15GNHxUgmjuIwTAy/E=; b=MtZkx3V7FhRjLlY8TUKEZNI97j
 HqOtRn12YOfA7Hva630mplGQQoSmf+COyCNcUDjjvCcI0/M08z8hRDSEJiiOteDNtZeTxIj+VlkzS
 254PMGJhxoq4WV0Y7IEetpj/i8ZHMGQjyeVbTMxPo/5HepN0Ul0y0KMhQhW06oz+Esps=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DGPrrkXTp6oI8cbbgByz5QLKv15GNHxUgmjuIwTAy/E=; b=X+MKmKhOUVTL8D9mDprP8Lbjex
 yCln3aNvHo6xmCMy18rAlBwyiFK5kvI0NHyYXqtV2tQLr1JLcvENQ5/xDwY8v+F8FD1lps0a3CquS
 Rd6WkahWcWMLNn1yHdb8+bNSdtoHjpvoLKBE004AA1vS72hQPWiOSTQ4wQ4XNHjj7RmM=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ns0kW-00CbrV-Ng
 for openipmi-developer@lists.sourceforge.net; Fri, 20 May 2022 11:24:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DGPrrkXTp6oI8cbbgByz5QLKv15GNHxUgmjuIwTAy/E=; b=eqnE/suLTpG3xbkMCBtDpxLY3n
 NIRgLQiaBi0sCvdNCD4AFRLhJwRt1fDLW5HSSGFY7WXFEGFCYXn6Q0dC8gIFph3vTjXA6DvyBiQwz
 I5PwxVn4HFAkq1g0udGCDh7f8awWYDjllyLtGAcRh6eSoRE6OIuNpAwHVy7SfEQenDYcne2doKiCl
 jXXzZQlRm486qDYGQtQ0jW8Ms6RtpLdk65Qcz7YJ7/YEdFvKdb+dzF1Re9Q6nwXZnFrLVKgAD5Mwb
 LfHsy0RngN1antwERG5D/EtoEWfAXqtoLg2k7TzZKasJtkGm7zpf+kH+Fd2GGS1HnQh8pXfJiIePS
 VAbFF/9w==;
Received: from 200-161-159-120.dsl.telesp.net.br ([200.161.159.120]
 helo=[192.168.1.60]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1ns0jj-00Cb4k-Od; Fri, 20 May 2022 13:24:04 +0200
Message-ID: <ded31ec0-076b-2c5b-0fe6-0c274954821f@igalia.com>
Date: Fri, 20 May 2022 08:23:33 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Baoquan He <bhe@redhat.com>, Petr Mladek <pmladek@suse.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-25-gpiccoli@igalia.com> <Yn0TnsWVxCcdB2yO@alley>
 <d313eec2-96b6-04e3-35cd-981f103d010e@igalia.com>
 <20220519234502.GA194232@MiWiFi-R3L-srv>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <20220519234502.GA194232@MiWiFi-R3L-srv>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 19/05/2022 20:45, Baoquan He wrote: > [...] >> I really
 appreciate the summary skill you have, to convert complex >> problems in
 very clear and concise ideas. Thanks for that, very useful! >> I agr [...]
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
X-Headers-End: 1ns0kW-00CbrV-Ng
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
 feng.tang@intel.com, "michael Kelley \(LINUX\)" <mikelley@microsoft.com>,
 hidehiro.kawai.ez@hitachi.com, sparclinux@vger.kernel.org, will@kernel.org,
 tglx@linutronix.de, linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 john.ogness@linutronix.de, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 linux-mips@vger.kernel.org, Dave Young <dyoung@redhat.com>, vgoyal@redhat.com,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 vkuznets@redhat.com, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 19/05/2022 20:45, Baoquan He wrote:
> [...]
>> I really appreciate the summary skill you have, to convert complex
>> problems in very clear and concise ideas. Thanks for that, very useful!
>> I agree with what was summarized above.
> 
> I want to say the similar words to Petr's reviewing comment when I went
> through the patches and traced each reviewing sub-thread to try to
> catch up. Petr has reivewed this series so carefully and given many
> comments I want to ack immediately.
> 
> I agree with most of the suggestions from Petr to this patch, except of
> one tiny concern, please see below inline comment.

Hi Baoquan, thanks! I'm glad you're also reviewing that =)


> [...]
> 
> I like the proposed skeleton of panic() and code style suggested by
> Petr very much. About panic_prefer_crash_dump which might need be added,
> I hope it has a default value true. This makes crash_dump execute at
> first by default just as before, unless people specify
> panic_prefer_crash_dump=0|n|off to disable it. Otherwise we need add
> panic_prefer_crash_dump=1 in kernel and in our distros to enable kdump,
> this is inconsistent with the old behaviour.

I'd like to understand better why the crash_kexec() must always be the
first thing in your use case. If we keep that behavior, we'll see all
sorts of workarounds - see the last patches of this series, Hyper-V and
PowerPC folks hardcoded "crash_kexec_post_notifiers" in order to force
execution of their relevant notifiers (like the vmbus disconnect,
specially in arm64 that has no custom machine_crash_shutdown, or the
fadump case in ppc). This led to more risk in kdump.

The thing is: with the notifiers' split, we tried to keep only the most
relevant/necessary stuff in this first list, things that ultimately
should improve kdump reliability or if not, at least not break it. My
feeling is that, with this series, we should change the idea/concept
that kdump must run first nevertheless, not matter what. We're here
trying to accommodate the antagonistic goals of hypervisors that need
some clean-up (even for kdump to work) VS. kdump users, that wish a
"pristine" system reboot ASAP after the crash.

Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
