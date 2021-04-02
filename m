Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 98753352B44
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 16:11:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSKWR-0007eg-50; Fri, 02 Apr 2021 14:11:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lSKWP-0007dJ-Tp
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 14:11:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2yK7rm1SM45KlY6SqRkaMT4FE5qHsW5WepD3GZ3b0dU=; b=BGek49CXxt+4qf1E114ypDjmYl
 3dK3rRuCX4jlcJitVzDbE+G+Y7fQS1ozzTOUvP0LJCQjU/iR8uWLzpgkjBnt2D/BbWsjlHKbeheKl
 IaEeF2d1j2Q51r0EnglGhssseQF7+ZGYtras6QHrQMYOns7IoDfzinBIA2pBf4OR9Olo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2yK7rm1SM45KlY6SqRkaMT4FE5qHsW5WepD3GZ3b0dU=; b=Gd5EpPVR4j1e+KURYuRoFWc3Dv
 ZIUhfrI0UvVLNHNSx7EGpNCHQSvN7tE3QpttyGMwPTQ1GcX+LJN9Gx2u4J7a0DPeaKEkXJaaeBs/d
 xV5Gpe3o3W1XvIlJIOnL8Z6OK1Lwb5bND9q8WGjSppiMUF6ZZn3wFN5eHa39fS54B/Oo=;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lSKAT-0002Ua-Gy
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 13:49:13 +0000
Received: by mail-oi1-f180.google.com with SMTP id a8so4982254oic.11
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 02 Apr 2021 06:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=2yK7rm1SM45KlY6SqRkaMT4FE5qHsW5WepD3GZ3b0dU=;
 b=RbLAOqMC7HszBDlNPOG98rxCTiJ0MRRhmMbiJ6qaA8mKqs5/DcrYmqqXOK8RzZ4HJ3
 aqokeRryxpPWArZBT+2iiNBIgk2iTjtBcurGISZGHcwY5boBbIQd+URYFwBm1+CqD0+p
 donP8z0PccPij0nfh8wIApUYKCHrzoBWFHSB4mTVhgrjsDh/AXzlGAz8dLZUgJzwRP+e
 l6EWUvnudSvZTJLXcY6ERHmPip/MVufpsUSoUQTXDcnoX32oo3HZxk5cOa+76XU0dG7m
 D/xOW839i4ND4Y2HTl9yahD2UngGyOQye/f8JKw8Xcbn+9JdegwN/17DzQyt5MufCYGi
 Lcng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=2yK7rm1SM45KlY6SqRkaMT4FE5qHsW5WepD3GZ3b0dU=;
 b=ta+DLoHyuk+OmLc2Os3Vaii1HPG14hW+jOHz10mkAr11vm1cGCizO4o1RSzU6XAnc2
 SverwTRLFBsJ0WZeJ1+gscAS9ghiO9gEIuhkL9T/A3W4aAoZlubRCh9uwmPuC8bNrqH3
 9EHN99+Rejhm1la59AqVa+rRwtgEJiR28ckt18lbF9kZHP/C2yO4X+TsaNy8WZlSoMF1
 AbaZhkWExmS70nSgey3KDB7zMM7ou8t18MAY4zYgCv0PrdSnRvfKPfWnVEEyjk2OCfhF
 Xeq8yaCBnbITza3W7YpFiIKj/UB1zO5qPXVMNA/FlSzYX8K8LzCYNUmq/OwyA/8zd3ZW
 TtkA==
X-Gm-Message-State: AOAM532WRjYRKxGguKf0OucX8YI/9Q74B3EqYW+0H60Iq1qk9lrMM0ww
 Ia/TsCbKEztLQrTkCNDz+A==
X-Google-Smtp-Source: ABdhPJzz2l/ptU6vIEdESbU3tRX8OFHXfmSJreQs3EPCUXlS41PfBS8PHrITFJ+dzMVVYJLd77Kn4w==
X-Received: by 2002:aca:1c18:: with SMTP id c24mr9609059oic.7.1617371331832;
 Fri, 02 Apr 2021 06:48:51 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id i4sm1816327otj.56.2021.04.02.06.48.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Apr 2021 06:48:51 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:f99f:823a:495e:5af])
 by serve.minyard.net (Postfix) with ESMTPSA id 56604180570;
 Fri,  2 Apr 2021 13:48:50 +0000 (UTC)
Date: Fri, 2 Apr 2021 08:48:49 -0500
From: Corey Minyard <minyard@acm.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20210402134849.GS507977@minyard.net>
References: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
 <20210330181649.66496-5-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330181649.66496-5-andriy.shevchenko@linux.intel.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.180 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSKAT-0002Ua-Gy
Subject: Re: [Openipmi-developer] [PATCH v1 05/10] ipmi_si: Introduce
 panic_event_str array
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
Cc: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Mar 30, 2021 at 09:16:44PM +0300, Andy Shevchenko wrote:
> Instead of twice repeat the constant literals, introduce
> panic_event_str array. It allows to simplify the code with
> help of match_string() API.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 49 ++++++++++-------------------
>  1 file changed, 17 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index f19f0f967e28..c7d37366d7bb 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -52,8 +52,12 @@ static bool drvregistered;
>  enum ipmi_panic_event_op {
>  	IPMI_SEND_PANIC_EVENT_NONE,
>  	IPMI_SEND_PANIC_EVENT,
> -	IPMI_SEND_PANIC_EVENT_STRING
> +	IPMI_SEND_PANIC_EVENT_STRING,
> +	IPMI_SEND_PANIC_EVENT_MAX
>  };

This is a nice change.  Can you add a comment here so that readers know
that the above enum and the following array are tied numerically?

-corey

> +
> +static const char *const panic_event_str[] = { "none", "event", "string", NULL };
> +
>  #ifdef CONFIG_IPMI_PANIC_STRING
>  #define IPMI_PANIC_DEFAULT IPMI_SEND_PANIC_EVENT_STRING
>  #elif defined(CONFIG_IPMI_PANIC_EVENT)
> @@ -68,46 +72,27 @@ static int panic_op_write_handler(const char *val,
>  				  const struct kernel_param *kp)
>  {
>  	char valcp[16];
> -	char *s;
> -
> -	strncpy(valcp, val, 15);
> -	valcp[15] = '\0';
> +	int e;
>  
> -	s = strstrip(valcp);
> -
> -	if (strcmp(s, "none") == 0)
> -		ipmi_send_panic_event = IPMI_SEND_PANIC_EVENT_NONE;
> -	else if (strcmp(s, "event") == 0)
> -		ipmi_send_panic_event = IPMI_SEND_PANIC_EVENT;
> -	else if (strcmp(s, "string") == 0)
> -		ipmi_send_panic_event = IPMI_SEND_PANIC_EVENT_STRING;
> -	else
> -		return -EINVAL;
> +	strscpy(valcp, val, sizeof(valcp));
> +	e = match_string(panic_event_str, -1, strstrip(valcp));
> +	if (e < 0)
> +		return e;
>  
> +	ipmi_send_panic_event = e;
>  	return 0;
>  }
>  
>  static int panic_op_read_handler(char *buffer, const struct kernel_param *kp)
>  {
> -	switch (ipmi_send_panic_event) {
> -	case IPMI_SEND_PANIC_EVENT_NONE:
> -		strcpy(buffer, "none\n");
> -		break;
> -
> -	case IPMI_SEND_PANIC_EVENT:
> -		strcpy(buffer, "event\n");
> -		break;
> -
> -	case IPMI_SEND_PANIC_EVENT_STRING:
> -		strcpy(buffer, "string\n");
> -		break;
> +	const char *event_str;
>  
> -	default:
> -		strcpy(buffer, "???\n");
> -		break;
> -	}
> +	if (ipmi_send_panic_event >= IPMI_SEND_PANIC_EVENT_MAX)
> +		event_str = "???";
> +	else
> +		event_str = panic_event_str[ipmi_send_panic_event];
>  
> -	return strlen(buffer);
> +	return sprintf(buffer, "%s\n", event_str);
>  }
>  
>  static const struct kernel_param_ops panic_op_ops = {
> -- 
> 2.30.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
