Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 086E4519FEA
	for <lists+openipmi-developer@lfdr.de>; Wed,  4 May 2022 14:46:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nmEP7-00044x-T5; Wed, 04 May 2022 12:46:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nmEP5-00044n-J2
 for openipmi-developer@lists.sourceforge.net; Wed, 04 May 2022 12:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UDxTzr/LbFPHIhZF1U36kLmGFtpbBGYhm6tD7CfQBjM=; b=JlVKFi0VfNxokJbF1+GeSgSzx5
 5y+xVVCPg2fdrxnKeSJ4PtU1SW4C2bMngn/loeevQ9WI2xBV2OFOPDl2Fe6if+5mfK17clmXFGLjG
 7d1nucUUdJdCkghFPnNz7E7kgL33co1duy2K2jujgQEeEY46TtLMi2z88+J2EHRVqHVs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UDxTzr/LbFPHIhZF1U36kLmGFtpbBGYhm6tD7CfQBjM=; b=b9ZPZ0Sqg4c+TzDksJHsO7q4NT
 f5AWk17hSbngtYFpqTDGDZL2JwDMzuuuYAblF05n1GcvY+v77vxnpnI0lhMNScJpAOOgf0nFV6lTj
 fcc2KQ/uTYZ/t1dDSdfWBc6J4g3eLaVaQYZ14M06ToCSYERlNuFM0Dy1bVDV+63xdpZs=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nmEP1-0013mX-43
 for openipmi-developer@lists.sourceforge.net; Wed, 04 May 2022 12:46:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UDxTzr/LbFPHIhZF1U36kLmGFtpbBGYhm6tD7CfQBjM=; b=KDrxDW8Mnr1qToRh0yGaDv25Fu
 TWpgQRScRF3dRjjU3pakegMZLqUHmycIdjATA6DbY60uPfya2zQOAwJ0e5erFJc5BJn7o3eV3sQ41
 Tox4yunn4/jA8a3IjyUJT/sI3KcoYtb2p2FNUwcMM3f1g/ex9W0DrY0odKixjZjudGtrtbA3G1JPw
 m7Nny7DVsQFLh+HpvU/q7Yc8/k1hRGwJeSWIAUBYmqnc5ZdThCMVxiKgVNOsyAMWZdrNHmIgXn40c
 w6AF2HzVr+D+OvvIusg4XzuOUWHoF2AYp44ZOOo2CAb1BDljEp1qf8qc23J8WoJ9sqhtbxFJxmFVB
 8aeUFBag==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nmEOH-0003Ke-Oi; Wed, 04 May 2022 14:46:02 +0200
Message-ID: <9581851d-6c61-a2ef-a3c4-6e2ce05eab12@igalia.com>
Date: Wed, 4 May 2022 09:45:31 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Evan Green <evgreen@chromium.org>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-5-gpiccoli@igalia.com>
 <CAE=gft5Pq25L4KFoPWbftkPF-JN1ex2yws77mMJ4GQnn9W0L2g@mail.gmail.com>
 <adcf6d0e-c37c-6ede-479e-29959d03d8c0@igalia.com>
 <CAE=gft623NxqetRssrZnaRmJLSP4BT5=-sVVwtYoHuspO_gULQ@mail.gmail.com>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <CAE=gft623NxqetRssrZnaRmJLSP4BT5=-sVVwtYoHuspO_gULQ@mail.gmail.com>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 03/05/2022 18:56, Evan Green wrote: > Hi Guilherme,
 > [...] >> Do you agree with that,
 or prefer really a parameter in >> gsmi_shutdown_reason()
 ? I'll follow your choice =) > > I'm fine with eithe [...] 
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
X-Headers-End: 1nmEP1-0013mX-43
Subject: Re: [Openipmi-developer] [PATCH 04/30] firmware: google: Convert
 regular spinlock into trylock on panic path
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
 David Gow <davidgow@google.com>, linux-xtensa@linux-xtensa.org,
 peterz@infradead.org, alejandro.j.jimenez@oracle.com,
 linux-remoteproc@vger.kernel.org, feng.tang@intel.com,
 linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-leds@vger.kernel.org,
 linux-s390@vger.kernel.org, mikelley@microsoft.com, john.ogness@linutronix.de,
 bhe@redhat.com, Jonathan Corbet <corbet@lwn.net>, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 pmladek@suse.com, dave.hansen@linux.intel.com,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>, linux-um@lists.infradead.org,
 rostedt@goodmis.org, rcu@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Borislav Petkov <bp@alien8.de>, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, vkuznets@redhat.com,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 Julius Werner <jwerner@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 03/05/2022 18:56, Evan Green wrote:
> Hi Guilherme,
> [...] 
>> Do you agree with that, or prefer really a parameter in
>> gsmi_shutdown_reason() ? I'll follow your choice =)
> 
> I'm fine with either, thanks for the link. Mostly I want to make sure
> other paths to gsmi_shutdown_reason() aren't also converted to a try.

Hi Evan, thanks for the prompt response! So, I'll proceed like I did in
s390, for consistency.

> [...]
>> Reasoning: the problem with your example is that, by default, secondary
>> CPUs are disabled in the panic path, through an IPI mechanism. IPIs take
>> precedence and interrupt the work in these CPUs, effectively
>> interrupting the "polite work" with the lock held heh
> 
> The IPI can only interrupt a CPU with irqs disabled if the IPI is an
> NMI. I haven't looked before to see if we use NMI IPIs to corral the
> other CPUs on panic. On x86, I grepped my way down to
> native_stop_other_cpus(), which looks like it does a normal IPI, waits
> 1 second, then does an NMI IPI. So, if a secondary CPU has the lock
> held, on x86 it has roughly 1s to finish what it's doing and re-enable
> interrupts before smp_send_stop() brings the NMI hammer down. I think
> this should be more than enough time for the secondary CPU to get out
> and release the lock.
> 
> So then it makes sense to me that you're fixing cases where we
> panicked with the lock held, or hung with the lock held. Given the 1
> second grace period x86 gives us, I'm on board, as that helps mitigate
> the risk that we bailed out early with the try and should have spun a
> bit longer instead. Thanks.
> 
> -Evan

Well, in the old path without "crash_kexec_post_notifiers", we indeed
end-up relying on native_stop_other_cpus() for x86 as you said, and the
"1s rule" makes sense. But after this series (or even before, if the
kernel parameter "crash_kexec_post_notifiers" was used) the function
used to stop CPUs in the panic path is crash_smp_send_stop(), and the
call chain is like:

Main CPU:
crash_smp_send_stop()
--kdump_nmi_shootdown_cpus()
----nmi_shootdown_cpus()

Then, in each CPU (except the main one, running panic() path),
we execute kdump_nmi_callback() in NMI context.

So, we seem to indeed interrupt any context (even with IRQs disabled),
increasing the likelihood of the potential lockups due to stopped CPUs
holding the locks heheh

Thanks again for the good discussion, let me know if anything I'm saying
doesn't make sense - this crash path is a bit convoluted, specially in
x86, I might have understood something wrongly =)
Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
