Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CD4F5CAC
	for <lists+openipmi-developer@lfdr.de>; Sat,  9 Nov 2019 02:21:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iTFRP-0008WI-1n; Sat, 09 Nov 2019 01:21:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cminyard@mvista.com>) id 1iTFRO-0008WB-21
 for openipmi-developer@lists.sourceforge.net; Sat, 09 Nov 2019 01:21:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5KpRmywjJeE+4W6tQj+g4HCES1tRk6e1MGgIomASk0A=; b=Z6npsvAU+vmAReDZg9U6YAdvRV
 U65EX0MB/URsfffNyAqII7/oUKHZznszFiLsct/r/H+32UbW7GXyekGF7yTjDj2BhnNzjktzybzFn
 oUyjfFFrJHzXyF/75y1ETtxHZzNRjKB4hc2MRKMJ7b/81yLZoCS57OTjgtRstzp6YrPI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5KpRmywjJeE+4W6tQj+g4HCES1tRk6e1MGgIomASk0A=; b=QJfbRH9ReBvPJ49CklhQpNBNmt
 88q4Hg2a6YZgvvViO3MZsfr4lO4iKUpsoKcPGBWuA65sFilZRunk85lRvzQBA5BGdWK3FYSLY8/pb
 ffiWeZ9efvOTFfayQ54YdTYv3bGX0kIztDnORCr1lTG7g1PBtG07yZM6b55keP/bx42U=;
Received: from mail-yb1-f196.google.com ([209.85.219.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iTFRF-007KOL-Ej
 for openipmi-developer@lists.sourceforge.net; Sat, 09 Nov 2019 01:21:26 +0000
Received: by mail-yb1-f196.google.com with SMTP id q7so582047ybk.4
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 08 Nov 2019 17:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mvista-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5KpRmywjJeE+4W6tQj+g4HCES1tRk6e1MGgIomASk0A=;
 b=u3f2l8qnQa4IB/3bCa5xVtOxB9hQlyfGZC3zvshPZU6EkSGeZgNZ0ao5kua009oqsy
 44lV49NstYWPOS/t3pOdD0wUQTsDYyrJYoLgnNb8kDLKGCsFOT61W/vttRyuY8Ds7jmX
 cVi5CpRfF0FNzNk3HYsGg643eP6VD9KcB1Aatsy9z1xZlCKHO9VLtxgvLfxGxqDKytEk
 15kgYRFhJw2nLMpeyHVND/eWC67for5H6u93z/D516LEnBP+XSf8kalORoS/ZriSoPpE
 4gzzls4GHaE+ZxCLv36wZBjjd0pNH17Juj347I6GJLkpfV80X/fOlnS0hy1uFXs1tMc0
 al7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=5KpRmywjJeE+4W6tQj+g4HCES1tRk6e1MGgIomASk0A=;
 b=IW06yvKJN8W/k/py12GqvmoYqGlqhWg+4SmG1xkGLxkQasBRYEcE+yEJc3GVK+Iijn
 uK7cS3CkPWTpCEPnRhuwBKyLcYboZ0SqubMWyj5Zi7z4ulFizw4q/ArxMu0FlAPDUYeN
 1Tynrc/5zrxvA2CL+atWeFK4NxU/IUhZc+tYQZUp53nhFDw965rs2xdvDDRvgZ9Pd3JQ
 aWXmJ8Gv1G/kJgKDUIm+7gMGI9cENXgOIgm0dGHVDRekolqFS0LBTiVTuXUjv6qL8rh3
 9SGjsD60l/JgglPeuLcxuiuDYrXg3MzqG0a8FYZUTHKfkl5+TOzhGglfjgQdbNd7wdEV
 r3TA==
X-Gm-Message-State: APjAAAVLrAbnRyxwUj0aBjN3Hc75jEBfYNvkvtPOCsbvFaFmEQQnq1W8
 MPp6cx5qiou9dvkPpd9JP5+FM4OnQok+YQ==
X-Google-Smtp-Source: APXvYqyodqON+OMREpWCiY78XW1yFB1s64QQ/7TZd35N1EsiNbbU7RBvAcSguKkEqtQhVcRLMvXUYQ==
X-Received: by 2002:a9d:634d:: with SMTP id y13mr6625886otk.202.1573251068916; 
 Fri, 08 Nov 2019 14:11:08 -0800 (PST)
Received: from minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id e62sm2206504oif.12.2019.11.08.14.11.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 08 Nov 2019 14:11:08 -0800 (PST)
Date: Fri, 8 Nov 2019 16:11:06 -0600
From: Corey Minyard <cminyard@mvista.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20191108221106.GT10313@minyard.net>
References: <20191108203435.112759-1-arnd@arndb.de>
 <20191108203435.112759-5-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108203435.112759-5-arnd@arndb.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iTFRF-007KOL-Ej
Subject: Re: [Openipmi-developer] [PATCH 4/8] ipmi: kill off 'timespec'
 usage again
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
Reply-To: cminyard@mvista.com
Cc: y2038@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Nov 08, 2019 at 09:34:27PM +0100, Arnd Bergmann wrote:
> 'struct timespec' is getting removed from the kernel. The usage in ipmi
> was fixed before in commit 48862ea2ce86 ("ipmi: Update timespec usage
> to timespec64"), but unfortunately it crept back in.
> 
> The busy looping code can better use ktime_t anyway, so use that
> there to simplify the implementation.

Thanks, this is a big improvement.  I have this queued, but if you
are going to submit this, I can remove it, and:

Reviewed-by: Corey Minyard <cminyard@mvista.com>

Do you think this should go in to 5.4?

-corey

> 
> Fixes: cbb19cb1eef0 ("ipmi_si: Convert timespec64 to timespec")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/char/ipmi/ipmi_si_intf.c | 40 +++++++++++---------------------
>  1 file changed, 13 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 6b9a0593d2eb..c7cc8538b84a 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -265,10 +265,10 @@ static void cleanup_ipmi_si(void);
>  #ifdef DEBUG_TIMING
>  void debug_timestamp(char *msg)
>  {
> -	struct timespec t;
> +	struct timespec64 t;
>  
> -	ktime_get_ts(&t);
> -	pr_debug("**%s: %ld.%9.9ld\n", msg, (long) t.tv_sec, t.tv_nsec);
> +	ktime_get_ts64(&t);
> +	pr_debug("**%s: %lld.%9.9ld\n", msg, t.tv_sec, t.tv_nsec);
>  }
>  #else
>  #define debug_timestamp(x)
> @@ -935,38 +935,25 @@ static void set_run_to_completion(void *send_info, bool i_run_to_completion)
>  }
>  
>  /*
> - * Use -1 in the nsec value of the busy waiting timespec to tell that
> - * we are spinning in kipmid looking for something and not delaying
> - * between checks
> + * Use -1 as a special constant to tell that we are spinning in kipmid
> + * looking for something and not delaying between checks
>   */
> -static inline void ipmi_si_set_not_busy(struct timespec *ts)
> -{
> -	ts->tv_nsec = -1;
> -}
> -static inline int ipmi_si_is_busy(struct timespec *ts)
> -{
> -	return ts->tv_nsec != -1;
> -}
> -
> +#define IPMI_TIME_NOT_BUSY ns_to_ktime(-1ull)
>  static inline bool ipmi_thread_busy_wait(enum si_sm_result smi_result,
>  					 const struct smi_info *smi_info,
> -					 struct timespec *busy_until)
> +					 ktime_t *busy_until)
>  {
>  	unsigned int max_busy_us = 0;
>  
>  	if (smi_info->si_num < num_max_busy_us)
>  		max_busy_us = kipmid_max_busy_us[smi_info->si_num];
>  	if (max_busy_us == 0 || smi_result != SI_SM_CALL_WITH_DELAY)
> -		ipmi_si_set_not_busy(busy_until);
> -	else if (!ipmi_si_is_busy(busy_until)) {
> -		ktime_get_ts(busy_until);
> -		timespec_add_ns(busy_until, max_busy_us * NSEC_PER_USEC);
> +		*busy_until = IPMI_TIME_NOT_BUSY;
> +	else if (*busy_until == IPMI_TIME_NOT_BUSY) {
> +		*busy_until = ktime_get() + max_busy_us * NSEC_PER_USEC;
>  	} else {
> -		struct timespec now;
> -
> -		ktime_get_ts(&now);
> -		if (unlikely(timespec_compare(&now, busy_until) > 0)) {
> -			ipmi_si_set_not_busy(busy_until);
> +		if (unlikely(ktime_get() > *busy_until)) {
> +			*busy_until = IPMI_TIME_NOT_BUSY;
>  			return false;
>  		}
>  	}
> @@ -988,9 +975,8 @@ static int ipmi_thread(void *data)
>  	struct smi_info *smi_info = data;
>  	unsigned long flags;
>  	enum si_sm_result smi_result;
> -	struct timespec busy_until = { 0, 0 };
> +	ktime_t busy_until = IPMI_TIME_NOT_BUSY;
>  
> -	ipmi_si_set_not_busy(&busy_until);
>  	set_user_nice(current, MAX_NICE);
>  	while (!kthread_should_stop()) {
>  		int busy_wait;
> -- 
> 2.20.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
