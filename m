Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 654942607A2
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Sep 2020 02:34:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kFRai-0006Gf-GT; Tue, 08 Sep 2020 00:34:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kFRag-0006GW-I4
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Sep 2020 00:34:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IzyYGVSiPefOaHIUtuxegpqEgrmuiDQww3Jq/w4wJEQ=; b=SYvKxE3eU3TDlqdnGq2C0V6V5S
 PaWcLQt92hF/wI7JwmsUz6o5AKeRpxPuOShLWgLHmVvwxS30ceZRtCY0GVOjwQBuK7XB6SI6jsxnO
 9RhD4bzUt6Msca+u4ofNV4q0GUDZzgl0yuA/huZX3TFhqQreOqyougFmQ0W0XTMBUfd0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IzyYGVSiPefOaHIUtuxegpqEgrmuiDQww3Jq/w4wJEQ=; b=RhIYGkSZ6TEinAhs9q5jfj7Mqs
 G5XxLb7ASpOgLAij1ALuMk/exzaUewBEYPK41o6+7Fvzh+UQ1CA8Wx3UR/2nBEwtUuDtzavd9QtCB
 gGVawbK/oHmkR+RXuZHksyIsi2hRFPTZp980epJH+75rSLzYHVxgxg7NCsP/uQMvtC90=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kFRaX-00G5ki-9N
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Sep 2020 00:34:30 +0000
Received: by mail-ot1-f66.google.com with SMTP id 60so560991otw.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 07 Sep 2020 17:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IzyYGVSiPefOaHIUtuxegpqEgrmuiDQww3Jq/w4wJEQ=;
 b=pgM6rS69oF8ZUeDRqlGRHXpQx7OqSJ3L+sBs04IeFc5CSjMch/OoecjaoXTW1nySBa
 UBpNaQofKmoYgLFXei1vbfk4iPjkbAMDNvXL3pbFt4/qXIyEjsmpApCdbxj8yQh2DVLO
 +riq8alabr3hOvN6/mrmbCoIo6NRvo5sfmIybnIoQsOajrMRIpJWmai2ccgfdSsmQXm1
 t5BuX1iLBCY4Gjf+TY2v4wEw4EUQW14ibLyJ3is+Hm8eHqd+7ku8igt3oHP8b3hjGNUc
 UC2GrV8nseTwqcwAhvf5dpUyw6iMkCSKydMCX9cEYXT66YYzs7qGFNW6vUdbU0X1uXQM
 788A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=IzyYGVSiPefOaHIUtuxegpqEgrmuiDQww3Jq/w4wJEQ=;
 b=Moa+SxJojBGTr/JtIoaFcMxAtymDw1ZVSwtQC187zT4RvWwGehzV7eOvyopgUCFuch
 cpUd9LTgU2HNtB7mGd24UrOc/Qr61rCP6IyMV4csbghKhfrpciqT9+JOfN455z5y1wvx
 falq90+bD9NpQvCyq4ncyPlyigj7J6YhF6c2LsG2HtcPspdkCXb2oRdk0wpxbbiFuS9T
 re4vcPdpckLqfiqzR6QKZ1vXKSXG+2ibpQNt3h5qNrVkaua8CYCrUVkiL4SLmNNqjiU+
 lO8xuqNhQVidJqafZBFctNCCxaxNpwX7Ckrl+IXN8uQm+FkveC1WhM4Fi7skEQeuN3NK
 k2pA==
X-Gm-Message-State: AOAM533st4hsnEv4ahCzYM0+OP8uYIX9xsTKODZFWBO29vOPqHxIKN9L
 iSzI9EgeKAMf2tEtAvqLgg==
X-Google-Smtp-Source: ABdhPJwC8fMi7Pn4i7STFy7PUABbRXZ2fBsb0bxYPawrSY0cUukelBa64d/F0l5mx4a8MXtmOV2sdg==
X-Received: by 2002:a9d:2925:: with SMTP id d34mr16024171otb.140.1599525255598; 
 Mon, 07 Sep 2020 17:34:15 -0700 (PDT)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id j20sm3237061ots.5.2020.09.07.17.34.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 17:34:14 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:84ed:77c1:d49f:5e6b])
 by serve.minyard.net (Postfix) with ESMTPSA id D531C18003B;
 Tue,  8 Sep 2020 00:34:13 +0000 (UTC)
Date: Mon, 7 Sep 2020 19:34:12 -0500
From: Corey Minyard <minyard@acm.org>
To: Markus Boehme <markubo@amazon.com>
Message-ID: <20200908003412.GD15602@minyard.net>
References: <1599495937-10654-1-git-send-email-markubo@amazon.com>
 <1599495937-10654-3-git-send-email-markubo@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1599495937-10654-3-git-send-email-markubo@amazon.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kFRaX-00G5ki-9N
Subject: Re: [Openipmi-developer] [PATCH 3/3] ipmi: Add timeout waiting for
 channel information
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
Cc: Stefan Nuernberger <snu@amazon.com>, SeongJae Park <sjpark@amazon.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Amit Shah <aams@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Sep 07, 2020 at 06:25:37PM +0200, Markus Boehme wrote:
> We have observed hosts with misbehaving BMCs that receive a Get Channel
> Info command but don't respond. This leads to an indefinite wait in the
> ipmi_msghandler's __scan_channels function, showing up as hung task
> messages for modprobe.
> 
> Add a timeout waiting for the channel scan to complete. If the scan
> fails to complete within that time, treat that like IPMI 1.0 and only
> assume the presence of the primary IPMB channel at channel number 0.

This patch is a significant rewrite of the function.  This makes me a
little uncomfortable.  It's generally better to fix the bug in a minimal
patch.  It would be easier to read if you had two patches, one to
restructure the code and one to fix the bug.

One comment inline, but it doesn't matter, because...

While thinking about this, I realized an issue with these patches.
There should be timers in the lower layers that detect that the BMC does
not respond and should return an error response.  This is supposed to be
guaranteed by the lower layer, you shouldn't need timers here.  In fact,
if you abort with a timer here, you should get a lower layer reponds
later, causing other issues.

So, this is wrong.  If you are never getting a response, there is a bug
in the lower layer.  If you are not getting the error response as
quickly as you would like, I'm not sure what to do about that.

The first patch, of course, is an obvious bug fix.  I'll include that.

-corey

> 
> Signed-off-by: Stefan Nuernberger <snu@amazon.com>
> Signed-off-by: Markus Boehme <markubo@amazon.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 72 ++++++++++++++++++++-----------------
>  1 file changed, 39 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 2a2e8b2..9de9ba6 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -3315,46 +3315,52 @@ channel_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
>   */
>  static int __scan_channels(struct ipmi_smi *intf, struct ipmi_device_id *id)
>  {
> -	int rv;
> +	long rv;
> +	unsigned int set;
>  
> -	if (ipmi_version_major(id) > 1
> -			|| (ipmi_version_major(id) == 1
> -			    && ipmi_version_minor(id) >= 5)) {
> -		unsigned int set;
> +	if (ipmi_version_major(id) == 1 && ipmi_version_minor(id) < 5) {

This is incorrect, it will not correctly handle IPMI 0.x BMCs.  Yes,
they exist.

> +		set = intf->curr_working_cset;
> +		goto single_ipmb_channel;
> +	}
>  
> -		/*
> -		 * Start scanning the channels to see what is
> -		 * available.
> -		 */
> -		set = !intf->curr_working_cset;
> -		intf->curr_working_cset = set;
> -		memset(&intf->wchannels[set], 0,
> -		       sizeof(struct ipmi_channel_set));
> -
> -		intf->null_user_handler = channel_handler;
> -		intf->curr_channel = 0;
> -		rv = send_channel_info_cmd(intf, 0);
> -		if (rv) {
> -			dev_warn(intf->si_dev,
> -				 "Error sending channel information for channel 0, %d\n",
> -				 rv);
> -			intf->null_user_handler = NULL;
> -			return -EIO;
> -		}
> +	/*
> +	 * Start scanning the channels to see what is
> +	 * available.
> +	 */
> +	set = !intf->curr_working_cset;
> +	intf->curr_working_cset = set;
> +	memset(&intf->wchannels[set], 0, sizeof(struct ipmi_channel_set));
>  
> -		/* Wait for the channel info to be read. */
> -		wait_event(intf->waitq, intf->channels_ready);
> +	intf->null_user_handler = channel_handler;
> +	intf->curr_channel = 0;
> +	rv = send_channel_info_cmd(intf, 0);
> +	if (rv) {
> +		dev_warn(intf->si_dev,
> +			 "Error sending channel information for channel 0, %ld\n",
> +			 rv);
>  		intf->null_user_handler = NULL;
> -	} else {
> -		unsigned int set = intf->curr_working_cset;
> +		return -EIO;
> +	}
>  
> -		/* Assume a single IPMB channel at zero. */
> -		intf->wchannels[set].c[0].medium = IPMI_CHANNEL_MEDIUM_IPMB;
> -		intf->wchannels[set].c[0].protocol = IPMI_CHANNEL_PROTOCOL_IPMB;
> -		intf->channel_list = intf->wchannels + set;
> -		intf->channels_ready = true;
> +	/* Wait for the channel info to be read. */
> +	rv = wait_event_timeout(intf->waitq, intf->channels_ready, 5 * HZ);
> +	if (rv == 0) {
> +		dev_warn(intf->si_dev,
> +			 "Timed out waiting for channel information. Assuming a single IPMB channel at 0.\n");
> +		goto single_ipmb_channel;
>  	}
>  
> +	goto out;
> +
> +single_ipmb_channel:
> +	/* Assume a single IPMB channel at zero. */
> +	intf->wchannels[set].c[0].medium = IPMI_CHANNEL_MEDIUM_IPMB;
> +	intf->wchannels[set].c[0].protocol = IPMI_CHANNEL_PROTOCOL_IPMB;
> +	intf->channel_list = intf->wchannels + set;
> +	intf->channels_ready = true;
> +
> +out:
> +	intf->null_user_handler = NULL;
>  	return 0;
>  }
>  
> -- 
> 2.7.4
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
