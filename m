Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E2E275840
	for <lists+openipmi-developer@lfdr.de>; Wed, 23 Sep 2020 14:52:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kL4GW-0004oA-0I; Wed, 23 Sep 2020 12:52:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kL4GT-0004np-U4
 for openipmi-developer@lists.sourceforge.net; Wed, 23 Sep 2020 12:52:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=31e/9hnjGjBaSvfSzNB5mOVLnVWAb9RUd/BaxDGfT4A=; b=a4vK6cA2WyC9QU0zPbqtiarznq
 DseFgMW1NOA7CIjgWFbJ4hac5FvlGBpK8p/63V9f42aUFwQ59j3dxih4HyDbXVgtpPwol3fv4cwdM
 D1IFhimWmmw9qqH/CtjusmCThj3VaTVADrMjH6azdvX9eYuBC720HIgzuhDJxNqOlwo0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=31e/9hnjGjBaSvfSzNB5mOVLnVWAb9RUd/BaxDGfT4A=; b=lEGdpF4TIMkkVSIiMepqqiGRAt
 UVYkWB2ahH0Q/yhouMMwqxuS7gH4wIdNYTAf+4L4PPijC3os2sY8ALl9Yd5OXOvkVaCCI7+u6cpnE
 qK9fj8QX77hH9sVbLcGyoHZJaNxLQ9p8CZgr6KhZBT9KQKF+J2dzLGDnyrY3MHIs3R2I=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kL4GK-002VGx-KY
 for openipmi-developer@lists.sourceforge.net; Wed, 23 Sep 2020 12:52:53 +0000
Received: by mail-ot1-f65.google.com with SMTP id 95so11543071ota.13
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 23 Sep 2020 05:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=31e/9hnjGjBaSvfSzNB5mOVLnVWAb9RUd/BaxDGfT4A=;
 b=GuzQy8gx7X7/aMG7eKdOZ5pwehmrMc1CRrR17t6PRaddpPd4AlqfMLE65PiQRFzJ65
 o2gsOF60wTXCyIOunmfujQXGdMa90OeDcem0LhMBXBFJLDUSJ3Fa45ocfp2gwgMYib4o
 YC5oLTPAF0arnm8fUZ8jaJltuwAdlqlyigTB841FtCVBHk2O1c/fLAjh0YcEShRDfMIn
 sQvlbLHVBy+Yf8r1irsgknqLSzZ7RwR52BSztciZTa+eINd91bizh4sr/69rmTpoaYSg
 mS18P3Qg2FYCtQDFbW14pchoxOxso+9VnuekHa3kmvd4BuxqDDzDOLBvCxZs/Ryj0jUR
 UY5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=31e/9hnjGjBaSvfSzNB5mOVLnVWAb9RUd/BaxDGfT4A=;
 b=hQG/+GuNi6nxJhZf/8Yqa1CoRTpaaKwKVnhPPwzv6btQRjCUzOtzb6n33uDl2Mpd4O
 gkJLFMkzibf+ic7F5bH+AsVIT+pWUG+sAfVKKmkFZLlPd4PqFo8mM4XRKi/KxFKigjNp
 RNjscoEMUPRxC63Dre87SK7L01rv253UQjBi+15i0+rJQ7yBLF1xpaLkXtdGtL7V6bMs
 yGXjnQqKa54UVtK0uH0y7N6/RWF12VjRV7WXgMxEN5USnW+y3DOzN2pmP950tojMp1dR
 cW946Ia5wwKcF0weI8VzzVTMVYI22AS0o+qD8FXBdAkTI2wlMTaW4N8LFrzPHOAMu4Gd
 tKKw==
X-Gm-Message-State: AOAM530DAXbsNXxlvSHsf+DNGG0T5w1Iw+cvs68iAMPIiGMruEFOCMpH
 stXqWwvU1tBFUch2YiBjiA==
X-Google-Smtp-Source: ABdhPJw3Hctr5mIKcQTNl9GNloqwfp/z9+4P/frBZE47RURn1QspopM9HgN8KvDTd2HH59Sfo/CE7Q==
X-Received: by 2002:a9d:7b48:: with SMTP id f8mr6085167oto.297.1600865558751; 
 Wed, 23 Sep 2020 05:52:38 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id k51sm7607386otc.46.2020.09.23.05.52.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 05:52:37 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:bda8:cea9:424f:cdc4])
 by serve.minyard.net (Postfix) with ESMTPSA id A7332182239;
 Wed, 23 Sep 2020 12:52:36 +0000 (UTC)
Date: Wed, 23 Sep 2020 07:52:35 -0500
From: Corey Minyard <minyard@acm.org>
To: Wu Bo <wubo40@huawei.com>
Message-ID: <20200923125235.GW3674@minyard.net>
References: <20200922161311.GQ3674@minyard.net>
 <20200922182940.31843-1-minyard@acm.org>
 <20200922184332.GT3674@minyard.net>
 <29448f27-12f7-82a1-7483-80471c36d48c@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29448f27-12f7-82a1-7483-80471c36d48c@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kL4GK-002VGx-KY
Subject: Re: [Openipmi-developer] [PATCH] x86: Fix MCE error handing when
 kdump is enabled
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
Reply-To: minyard@acm.org
Cc: Corey Minyard <cminyard@mvista.com>, arnd@arndb.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linfeilong@huawei.com, hidehiro.kawai.ez@hitachi.com,
 openipmi-developer@lists.sourceforge.net, liuzhiqiang26@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Sep 23, 2020 at 04:48:31PM +0800, Wu Bo wrote:
> On 2020/9/23 2:43, Corey Minyard wrote:
> > On Tue, Sep 22, 2020 at 01:29:40PM -0500, minyard@acm.org wrote:
> > > From: Corey Minyard <cminyard@mvista.com>
> > > 
> > > If kdump is enabled, the handling of shooting down CPUs does not use the
> > > RESET_VECTOR irq before trying to use NMIs to shoot down the CPUs.
> > > 
> > > For normal errors that is fine.  MCEs, however, are already running in
> > > an NMI, so sending them an NMI won't do anything.  The MCE code is set
> > > up to receive the RESET_VECTOR because it disables CPUs, but it won't
> >                                              ^ should be "enables irqs"
> > > work on the NMI-only case.
> > > 
> > > There is already code in place to scan for the NMI callback being ready,
> > > simply call that from the MCE's wait_for_panic() code so it will pick up
> > > and handle it if an NMI shootdown is requested.  This required
> > > propagating the registers down to wait_for_panic().
> > > 
> > > Signed-off-by: Corey Minyard <cminyard@mvista.com>
> > > ---
> > > After looking at it a bit, I think this is the proper way to fix the
> > > issue, though I'm not an expert on this code so I'm not sure.
> > > 
> > > I have not even tested this patch, I have only compiled it.  But from
> > > what I can tell, things waiting in NMIs for a shootdown should call
> > > run_crash_ipi_callback() in their wait loop.
> 
> Hi,
> 
> In my VM (using qemu-kvm), Kump is enabled, used mce-inject injects an
> uncorrectable error. I has an issue with the IPMI driver's panic handling
> running while the other CPUs are sitting in "wait_for_panic()" with
> interrupt on, and IPMI interrupts interfering with the panic handling, As a
> result, IPMI panic hangs for more than 3000 seconds.
> 
> After I has patched and tested this patch, the problem of IPMI hangs has
> disappeared. It should be a solution to the problem.

Thanks for testing this.  I have submitted the patch to the MCE
maintainers.

-corey

> 
> 
> Thanks,
> 
> Wu Bo
> 
> > > 
> > >   arch/x86/kernel/cpu/mce/core.c | 67 ++++++++++++++++++++++------------
> > >   1 file changed, 44 insertions(+), 23 deletions(-)
> > > 
> > > diff --git a/arch/x86/kernel/cpu/mce/core.c b/arch/x86/kernel/cpu/mce/core.c
> > > index f43a78bde670..3a842b3773b3 100644
> > > --- a/arch/x86/kernel/cpu/mce/core.c
> > > +++ b/arch/x86/kernel/cpu/mce/core.c
> > > @@ -282,20 +282,35 @@ static int fake_panic;
> > >   static atomic_t mce_fake_panicked;
> > >   /* Panic in progress. Enable interrupts and wait for final IPI */
> > > -static void wait_for_panic(void)
> > > +static void wait_for_panic(struct pt_regs *regs)
> > >   {
> > >   	long timeout = PANIC_TIMEOUT*USEC_PER_SEC;
> > >   	preempt_disable();
> > >   	local_irq_enable();
> > > -	while (timeout-- > 0)
> > > +	while (timeout-- > 0) {
> > > +		/*
> > > +		 * We are in an NMI waiting to be stopped by the
> > > +		 * handing processor.  For kdump handling, we need to
> > > +		 * be monitoring crash_ipi_issued since that is what
> > > +		 * is used for an NMI stop used by kdump.  But we also
> > > +		 * need to have interrupts enabled some so that
> > > +		 * RESET_VECTOR will interrupt us on a normal
> > > +		 * shutdown.
> > > +		 */
> > > +		local_irq_disable();
> > > +		run_crash_ipi_callback(regs);
> > > +		local_irq_enable();
> > > +
> > >   		udelay(1);
> > > +	}
> > >   	if (panic_timeout == 0)
> > >   		panic_timeout = mca_cfg.panic_timeout;
> > >   	panic("Panicing machine check CPU died");
> > >   }
> > > -static void mce_panic(const char *msg, struct mce *final, char *exp)
> > > +static void mce_panic(const char *msg, struct mce *final, char *exp,
> > > +		      struct pt_regs *regs)
> > >   {
> > >   	int apei_err = 0;
> > >   	struct llist_node *pending;
> > > @@ -306,7 +321,7 @@ static void mce_panic(const char *msg, struct mce *final, char *exp)
> > >   		 * Make sure only one CPU runs in machine check panic
> > >   		 */
> > >   		if (atomic_inc_return(&mce_panicked) > 1)
> > > -			wait_for_panic();
> > > +			wait_for_panic(regs);
> > >   		barrier();
> > >   		bust_spinlocks(1);
> > > @@ -817,7 +832,7 @@ static atomic_t mce_callin;
> > >   /*
> > >    * Check if a timeout waiting for other CPUs happened.
> > >    */
> > > -static int mce_timed_out(u64 *t, const char *msg)
> > > +static int mce_timed_out(u64 *t, const char *msg, struct pt_regs *regs)
> > >   {
> > >   	/*
> > >   	 * The others already did panic for some reason.
> > > @@ -827,12 +842,12 @@ static int mce_timed_out(u64 *t, const char *msg)
> > >   	 */
> > >   	rmb();
> > >   	if (atomic_read(&mce_panicked))
> > > -		wait_for_panic();
> > > +		wait_for_panic(regs);
> > >   	if (!mca_cfg.monarch_timeout)
> > >   		goto out;
> > >   	if ((s64)*t < SPINUNIT) {
> > >   		if (mca_cfg.tolerant <= 1)
> > > -			mce_panic(msg, NULL, NULL);
> > > +			mce_panic(msg, NULL, NULL, regs);
> > >   		cpu_missing = 1;
> > >   		return 1;
> > >   	}
> > > @@ -866,7 +881,7 @@ static int mce_timed_out(u64 *t, const char *msg)
> > >    * All the spin loops have timeouts; when a timeout happens a CPU
> > >    * typically elects itself to be Monarch.
> > >    */
> > > -static void mce_reign(void)
> > > +static void mce_reign(struct pt_regs *regs)
> > >   {
> > >   	int cpu;
> > >   	struct mce *m = NULL;
> > > @@ -896,7 +911,7 @@ static void mce_reign(void)
> > >   	 * other CPUs.
> > >   	 */
> > >   	if (m && global_worst >= MCE_PANIC_SEVERITY && mca_cfg.tolerant < 3)
> > > -		mce_panic("Fatal machine check", m, msg);
> > > +		mce_panic("Fatal machine check", m, msg, regs);
> > >   	/*
> > >   	 * For UC somewhere we let the CPU who detects it handle it.
> > > @@ -909,7 +924,8 @@ static void mce_reign(void)
> > >   	 * source or one CPU is hung. Panic.
> > >   	 */
> > >   	if (global_worst <= MCE_KEEP_SEVERITY && mca_cfg.tolerant < 3)
> > > -		mce_panic("Fatal machine check from unknown source", NULL, NULL);
> > > +		mce_panic("Fatal machine check from unknown source", NULL, NULL,
> > > +			  regs);
> > >   	/*
> > >   	 * Now clear all the mces_seen so that they don't reappear on
> > > @@ -928,7 +944,7 @@ static atomic_t global_nwo;
> > >    * in the entry order.
> > >    * TBD double check parallel CPU hotunplug
> > >    */
> > > -static int mce_start(int *no_way_out)
> > > +static int mce_start(int *no_way_out, struct pt_regs *regs)
> > >   {
> > >   	int order;
> > >   	int cpus = num_online_cpus();
> > > @@ -949,7 +965,8 @@ static int mce_start(int *no_way_out)
> > >   	 */
> > >   	while (atomic_read(&mce_callin) != cpus) {
> > >   		if (mce_timed_out(&timeout,
> > > -				  "Timeout: Not all CPUs entered broadcast exception handler")) {
> > > +				  "Timeout: Not all CPUs entered broadcast exception handler",
> > > +				  regs)) {
> > >   			atomic_set(&global_nwo, 0);
> > >   			return -1;
> > >   		}
> > > @@ -975,7 +992,8 @@ static int mce_start(int *no_way_out)
> > >   		 */
> > >   		while (atomic_read(&mce_executing) < order) {
> > >   			if (mce_timed_out(&timeout,
> > > -					  "Timeout: Subject CPUs unable to finish machine check processing")) {
> > > +					  "Timeout: Subject CPUs unable to finish machine check processing",
> > > +					  regs)) {
> > >   				atomic_set(&global_nwo, 0);
> > >   				return -1;
> > >   			}
> > > @@ -995,7 +1013,7 @@ static int mce_start(int *no_way_out)
> > >    * Synchronize between CPUs after main scanning loop.
> > >    * This invokes the bulk of the Monarch processing.
> > >    */
> > > -static int mce_end(int order)
> > > +static int mce_end(int order, struct pt_regs *regs)
> > >   {
> > >   	int ret = -1;
> > >   	u64 timeout = (u64)mca_cfg.monarch_timeout * NSEC_PER_USEC;
> > > @@ -1020,12 +1038,13 @@ static int mce_end(int order)
> > >   		 */
> > >   		while (atomic_read(&mce_executing) <= cpus) {
> > >   			if (mce_timed_out(&timeout,
> > > -					  "Timeout: Monarch CPU unable to finish machine check processing"))
> > > +					  "Timeout: Monarch CPU unable to finish machine check processing",
> > > +					  regs))
> > >   				goto reset;
> > >   			ndelay(SPINUNIT);
> > >   		}
> > > -		mce_reign();
> > > +		mce_reign(regs);
> > >   		barrier();
> > >   		ret = 0;
> > >   	} else {
> > > @@ -1034,7 +1053,8 @@ static int mce_end(int order)
> > >   		 */
> > >   		while (atomic_read(&mce_executing) != 0) {
> > >   			if (mce_timed_out(&timeout,
> > > -					  "Timeout: Monarch CPU did not finish machine check processing"))
> > > +					  "Timeout: Monarch CPU did not finish machine check processing",
> > > +					  regs))
> > >   				goto reset;
> > >   			ndelay(SPINUNIT);
> > >   		}
> > > @@ -1286,9 +1306,9 @@ noinstr void do_machine_check(struct pt_regs *regs)
> > >   	 */
> > >   	if (lmce) {
> > >   		if (no_way_out)
> > > -			mce_panic("Fatal local machine check", &m, msg);
> > > +			mce_panic("Fatal local machine check", &m, msg, regs);
> > >   	} else {
> > > -		order = mce_start(&no_way_out);
> > > +		order = mce_start(&no_way_out, regs);
> > >   	}
> > >   	__mc_scan_banks(&m, final, toclear, valid_banks, no_way_out, &worst);
> > > @@ -1301,7 +1321,7 @@ noinstr void do_machine_check(struct pt_regs *regs)
> > >   	 * When there's any problem use only local no_way_out state.
> > >   	 */
> > >   	if (!lmce) {
> > > -		if (mce_end(order) < 0)
> > > +		if (mce_end(order, regs) < 0)
> > >   			no_way_out = worst >= MCE_PANIC_SEVERITY;
> > >   	} else {
> > >   		/*
> > > @@ -1314,7 +1334,7 @@ noinstr void do_machine_check(struct pt_regs *regs)
> > >   		 */
> > >   		if (worst >= MCE_PANIC_SEVERITY && mca_cfg.tolerant < 3) {
> > >   			mce_severity(&m, cfg->tolerant, &msg, true);
> > > -			mce_panic("Local fatal machine check!", &m, msg);
> > > +			mce_panic("Local fatal machine check!", &m, msg, regs);
> > >   		}
> > >   	}
> > > @@ -1325,7 +1345,7 @@ noinstr void do_machine_check(struct pt_regs *regs)
> > >   	if (cfg->tolerant == 3)
> > >   		kill_it = 0;
> > >   	else if (no_way_out)
> > > -		mce_panic("Fatal machine check on current CPU", &m, msg);
> > > +		mce_panic("Fatal machine check on current CPU", &m, msg, regs);
> > >   	if (worst > 0)
> > >   		irq_work_queue(&mce_irq_work);
> > > @@ -1361,7 +1381,8 @@ noinstr void do_machine_check(struct pt_regs *regs)
> > >   		 */
> > >   		if (m.kflags & MCE_IN_KERNEL_RECOV) {
> > >   			if (!fixup_exception(regs, X86_TRAP_MC, 0, 0))
> > > -				mce_panic("Failed kernel mode recovery", &m, msg);
> > > +				mce_panic("Failed kernel mode recovery", &m,
> > > +					  msg, regs);
> > >   		}
> > >   	}
> > >   }
> > > -- 
> > > 2.17.1
> > > 
> > > 
> > > 
> > > _______________________________________________
> > > Openipmi-developer mailing list
> > > Openipmi-developer@lists.sourceforge.net
> > > https://lists.sourceforge.net/lists/listinfo/openipmi-developer
> > .
> > 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
