Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0C9C6DFA5
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Nov 2025 11:27:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vMhPtS8Ozzjwv4XTYiN6SzYhWVrR2m3d+ZOWJ1mdliU=; b=Qowh4QT8h72glAQSou9/BTPyN3
	MHaqM1sxTHQ1QLWgPks+c85REynJtjegz1vkTXiBgt95ER7npm6h2UFMe58juyLAWbeKrw4JlBRLn
	KR1AgNN92SLhIzzOqs6M3OiDDtiSo5jQMi7emdLkvmPNZ/rGnJr27uZki9ZX4GfPkSkQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vLfPE-0001Hk-I0;
	Wed, 19 Nov 2025 10:27:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vLfPD-0001Hb-08 for openipmi-developer@lists.sourceforge.net;
 Wed, 19 Nov 2025 10:27:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S5WY+lURmUw0HR9k8yrpqOUBVS/BrDvLbJrZD1jEg78=; b=kOlOPM4AWvQ6u/hog1YnsK33ga
 kc/HihwC/LDkWmu0fmEIF+Su8oHqlogcGtxca1GKzfLdCjdkdUgWEX6vrrI9svIjsz2NRhq+VVtQv
 H9C2Pd3XbqCFhi48PjA3MQBoyLLELZzEynFv0uWTByH/IS2A1oeTqhfFDHzvAztMgk1c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S5WY+lURmUw0HR9k8yrpqOUBVS/BrDvLbJrZD1jEg78=; b=eNe82TA9ahRgH2lVeg9J1f11rJ
 iD41GHELHjBaKrEd0cohX2sTiAUZd3tst//b7cM/ECHYlJYIWLUXtVFO9uppXwCK/dknzO+IGojXK
 OQF4IKWYrdA4z3TEbP0PRr2R86kb5C+IJOCcgSPCN5hRCc+4dz46gsxb9vaaalli7rX8=;
Received: from mgamail.intel.com ([198.175.65.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vLfPC-0003xs-4E for openipmi-developer@lists.sourceforge.net;
 Wed, 19 Nov 2025 10:27:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763548038; x=1795084038;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jmw9bhTP6DqEEo8SaI642JH1s3dFqQGzetmEw8f3+f0=;
 b=Q7wnZ5uZcylfTX7Pryhow5wlmkpGU/by7wRhkM24+yWK5y5HgkvOj/g+
 3wpfNMQvI73f18HCBwXd3+xDl1sN3xNq0TfcwJm45a6vUxFrhOq+9S/Gk
 Jb/T4kqanT/RCd445Mt7YM4SHz9uV3mayTGtZU55cMm7PejtSbWb2DfKb
 qKXfWhyj2GiYw4HH4iMvfUS2Yogg1n9g1BeTBfOyjC5ncbkbeL61XD2AG
 IsAEM06sFGDvZkqCGr0DlF9G04865kTlaLPyWOZmZkM/qQTlkV2TkzXr0
 8S1CBP/mKbFQYNNFwdpbu74fBRt7dkeiwYXoOonOvx5etIzqQMn+SOtLr g==;
X-CSE-ConnectionGUID: xfTVL+s8TKKPrMwZO3TNQg==
X-CSE-MsgGUID: QV3aKlG3RN6TvEhTiYfU6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="65286202"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="65286202"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 02:27:12 -0800
X-CSE-ConnectionGUID: BabbyDhyQAOE+ZtEsTT7/g==
X-CSE-MsgGUID: bIH3DAOlTZmt1WuzGTp/dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="195322765"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.245])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 02:26:53 -0800
Date: Wed, 19 Nov 2025 12:26:51 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Petr Mladek <pmladek@suse.com>
Message-ID: <aR2bazZn8m4EMHdW@smile.fi.intel.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-20-andriy.shevchenko@linux.intel.com>
 <aR2XAYWTEgMZu_Mx@pathway.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aR2XAYWTEgMZu_Mx@pathway.suse.cz>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 19, 2025 at 11:08:01AM +0100, Petr Mladek wrote:
 > On Thu 2025-11-13 15:32:33, Andy Shevchenko wrote: > > Use %ptSp instead
 of open coded variants to print content of > > struct timespec64 [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vLfPC-0003xs-4E
Subject: Re: [Openipmi-developer] [PATCH v3 19/21] scsi: fnic: Switch to use
 %ptSp
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
Cc: Andrew Lunn <andrew@lunn.ch>, dri-devel@lists.freedesktop.org,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Max Kellermann <max.kellermann@ionos.com>, ceph-devel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
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
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
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
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Xiubo Li <xiubli@redhat.com>,
 intel-xe@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, netdev@vger.kernel.org,
 Jessica Zhang <jesszhan0024@gmail.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Nov 19, 2025 at 11:08:01AM +0100, Petr Mladek wrote:
> On Thu 2025-11-13 15:32:33, Andy Shevchenko wrote:
> > Use %ptSp instead of open coded variants to print content of
> > struct timespec64 in human readable format.
> 
> I was about to commit the changes into printk/linux.git and
> found a mistake during the final double check, see below.
> 
> > diff --git a/drivers/scsi/fnic/fnic_trace.c b/drivers/scsi/fnic/fnic_trace.c
> > index cdc6b12b1ec2..0a849a195a8e 100644
> > --- a/drivers/scsi/fnic/fnic_trace.c
> > +++ b/drivers/scsi/fnic/fnic_trace.c
> > @@ -215,30 +213,26 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
> >  {
> >  	int len = 0;
> >  	int buf_size = debug->buf_size;
> > -	struct timespec64 val1, val2;
> > +	struct timespec64 val, val1, val2;
> >  	int i = 0;
> >  
> > -	ktime_get_real_ts64(&val1);
> > +	ktime_get_real_ts64(&val);
> >  	len = scnprintf(debug->debug_buffer + len, buf_size - len,
> >  		"------------------------------------------\n"
> >  		 "\t\tTime\n"
> >  		"------------------------------------------\n");
> >  
> > +	val1 = timespec64_sub(val, stats->stats_timestamps.last_reset_time);
> > +	val2 = timespec64_sub(val, stats->stats_timestamps.last_read_time);
> >  	len += scnprintf(debug->debug_buffer + len, buf_size - len,
> > -		"Current time :          [%lld:%ld]\n"
> > -		"Last stats reset time:  [%lld:%09ld]\n"
> > -		"Last stats read time:   [%lld:%ld]\n"
> > -		"delta since last reset: [%lld:%ld]\n"
> > -		"delta since last read:  [%lld:%ld]\n",
> > -	(s64)val1.tv_sec, val1.tv_nsec,
> > -	(s64)stats->stats_timestamps.last_reset_time.tv_sec,
> > -	stats->stats_timestamps.last_reset_time.tv_nsec,
> > -	(s64)stats->stats_timestamps.last_read_time.tv_sec,
> > -	stats->stats_timestamps.last_read_time.tv_nsec,
> > -	(s64)timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_sec,
> > -	timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_nsec,
> > -	(s64)timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_sec,
> > -	timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_nsec);
> > +			 "Current time :          [%ptSp]\n"
> > +			 "Last stats reset time:  [%ptSp]\n"
> > +			 "Last stats read time:   [%ptSp]\n"
> > +			 "delta since last reset: [%ptSp]\n"
> > +			 "delta since last read:  [%ptSp]\n",
> 
> Both delta times are printed at the end.
> 
> > +			 &val,
> > +			 &stats->stats_timestamps.last_reset_time, &val1,
> > +			 &stats->stats_timestamps.last_read_time, &val2);
> 
> I think that this should be:
> 
> 			 &stats->stats_timestamps.last_reset_time,
> 			 &stats->stats_timestamps.last_read_time,
> 			 &val1, &val2);
> 
> >  	stats->stats_timestamps.last_read_time = val1;
> 
> The original code stored the current time in "val1". This should be:
> 
> 	stats->stats_timestamps.last_read_time = val;
> 
> > @@ -416,8 +410,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
> >  	jiffies_to_timespec64(stats->misc_stats.last_ack_time, &val2);
> 
> Just for record. Another values are stored into @val1 and @val2 at
> this point.
> 
> >  	len += scnprintf(debug->debug_buffer + len, buf_size - len,
> > -		  "Last ISR time: %llu (%8llu.%09lu)\n"
> > -		  "Last ACK time: %llu (%8llu.%09lu)\n"
> > +		  "Last ISR time: %llu (%ptSp)\n"
> > +		  "Last ACK time: %llu (%ptSp)\n"
> >  		  "Max ISR jiffies: %llu\n"
> >  		  "Max ISR time (ms) (0 denotes < 1 ms): %llu\n"
> >  		  "Corr. work done: %llu\n"
> > @@ -437,10 +431,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
> >  		  "Number of rport not ready: %lld\n"
> >  		 "Number of receive frame errors: %lld\n"
> >  		 "Port speed (in Mbps): %lld\n",
> > -		  (u64)stats->misc_stats.last_isr_time,
> > -		  (s64)val1.tv_sec, val1.tv_nsec,
> > -		  (u64)stats->misc_stats.last_ack_time,
> > -		  (s64)val2.tv_sec, val2.tv_nsec,
> > +		  (u64)stats->misc_stats.last_isr_time, &val1,
> > +		  (u64)stats->misc_stats.last_ack_time, &val2,
> 
> So, this is correct!
> 
> >  		  (u64)atomic64_read(&stats->misc_stats.max_isr_jiffies),
> >  		  (u64)atomic64_read(&stats->misc_stats.max_isr_time_ms),
> >  		  (u64)atomic64_read(&stats->misc_stats.corr_work_done),
> 
> 
> Now, I think that there is no need to resend the entire huge patchset.
> 
> I could either fix this when comitting or commit the rest and
> you could send only this patch for review.

Thank you for the thoroughly done review, I changed that patch between the
versions and the problem is that for printf() specifiers (extensions) we do not
have an automatic type checking. We starve for a GCC plugin for that, yeah...

In any case, if you fold your changes in, I will appreciate that!
Otherwise it's also fine with me to send a patch separately later on.

> PS: All other patches look good. Well, nobody acked 7th patch yet.
>     But I think that the change is pretty straightforward and
>     we could do it even without an ack.

This is my understanding as well. It changes the output, but that output is
debug anyway. So I don't expect breakage of anything we have an obligation
to keep working.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
