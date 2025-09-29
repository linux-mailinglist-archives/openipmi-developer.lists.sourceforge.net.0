Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C26A0BAA62A
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Sep 2025 20:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ceu+vKDQRn+73q7YFRDXaw9azaasiD+36b1BYlhhwdU=; b=C4i4ZrshtKWo7HIjKkSnZqyh/9
	5JDmSffOKm6vpYvVe41H93DgZQhSHvDeAP8fqS7bGAIXdK42IfYy7AXr6FD55EkmX/Rk42CCvYUAT
	LByxe34NufRSIScUmQY0ZTmARAzp3bVJVKWksMwHyAsQPLL866JTa1cS3wEd4+2Nrn7k=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v3IxL-0000fO-Rx;
	Mon, 29 Sep 2025 18:50:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1v3IxK-0000f8-5z
 for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Sep 2025 18:50:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/eYghtAHXDu1pA8kk0UZm4ZBUJGT5BJDSlgQOoijoBY=; b=jRe7/T1PacRKd/jSn78RbL5+BZ
 Ozq0GkeTjGhYW2YzOpWJ2psoo8KBUtsDd8RoWKd3CFYmEgnvN+/FB9NuVF4H6CWZ7iOysp+C38rYl
 yNthqqbxzY6NcJrEaxdoQftBOLQBdjS5DnlY48FZqfxrZ3cEp2etSQ7Ecu81pSkm9qlE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/eYghtAHXDu1pA8kk0UZm4ZBUJGT5BJDSlgQOoijoBY=; b=fE4oR3Yq88VeEl1xs+7Oq3qjUV
 lIkkndHwOhtZ4agAdocpeaEjnY9Z2CQ60Z2/SCWmgS6DI6YDW2aBxx1fE1NsaBhZDMsX2TKb6cYCf
 7I4HuGOcJ5RLDPwNFGFHo+/GCgYlIKSoxtRj/Y0KAW76ighFPe7ymKVX2dQk1He5xLkk=;
Received: from mail-vs1-f44.google.com ([209.85.217.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v3IxJ-0008Of-Qn for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Sep 2025 18:50:38 +0000
Received: by mail-vs1-f44.google.com with SMTP id
 ada2fe7eead31-5a265e0ec25so4018056137.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 29 Sep 2025 11:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1759171827; x=1759776627;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/eYghtAHXDu1pA8kk0UZm4ZBUJGT5BJDSlgQOoijoBY=;
 b=IsunA8K//3UHmPG6bBqY7/ei4Nh0VRIyyCtEmLXCrbdSVp6IIuc3Xnj+QYiKQ0Qcxx
 TWfJoAGCb6m6E7ytlcz8KZzjaVnr0//T07XrCRSeBhXVUN2Xy5bhHy2kjegl4IbBZ6jX
 YDyNG8P50RG+LQKKNQfYfB4j39hiUhN1LVv6pPyvHNesjhgO7BSD9AjnFYCPVzMlM+nm
 qqxy2q1EKu3Trr7kKfHZjK/z0VSWyaSnqRXWnFOjdAUJKXI9dCN9EOkSlYFxVskEby3M
 bUbVn7+InIPMaexbd5ETi2vIOC2E1CgJRoEwJmd2aKx/CtG9KfwcAXE2BLDFfjrO+caA
 t7xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759171827; x=1759776627;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/eYghtAHXDu1pA8kk0UZm4ZBUJGT5BJDSlgQOoijoBY=;
 b=r7S/bacSlOeX/Yxy6raLGBFguMnRBUn6yd7umIj2dWVCuv8yd4gWZogh/JmkUB8bGf
 i/QwwcAZCiIRgq3JIAJeYRFGZDm2rrx3/yDFxAwBeV/K2kXQrH2QiM+ew90fCVR8cH2y
 WpEanDo7ER1LCLfG6J038eU+UYrg9PLBZ9M6fV0bB90PZ2a30R/Dn44JAX/Luk2eft5R
 1GCYqQlHcYGaDVPKxtLF3xHznNfdGLySXV6udikDsrUwz/THYT9TsudFK6ZglMPjB001
 I9IIjcjwzznIY02uHGvwKVCfxSXnRRdz8D/7oQ6BhtvO8CrIL58B9mK9BgG313upPiL8
 bFjA==
X-Gm-Message-State: AOJu0YxVyJNMlRvBY1dxhwGdLYw5+WUjl7yzzLxnYVSJgxpOSTVf4FXT
 o2zYG6nCDDmfAwytBj6BQ/XpcHpf9VaSht51NwwPErA6f/E/PsJiiYaKDd2WarAXzPSzRDOptRd
 48250xnw=
X-Gm-Gg: ASbGncv8aCemcW9jcBMNIy/yDYr8K4h/n18iBU0d+29ILJp+/H+iCLI/jwzULmZ+n2u
 8PJ4HdrrU4BtBCuA22FwFsvRRgFDzZYPCE2hayJeZ9ttFUW8xT5v8fBeMq10WMBlWyleY9NRiCn
 RxTJlTM4l1bUfclSs7Lgm2UqDIb37rI+Y0rlNLJwDBykfAHGjrVb//TuF0ZlcA23bwXPduq0qeY
 FQyBAcLuyB88aFDeMrzx1Jh+nVvMEbEXprb82DsyvxhbWnRELxjCMtQeDIrNYdiCNYt00HamPr6
 Ic5Lzh2bU2khQJXz9EzDDitStx/eeFQfzVXLmQem+kTRLMD3+f/TmMkxoR5E8rJD+S7PEwkrEsX
 uqX5HebfMuTIqU0G/TRNEUmoHRfdK2t3JfFWf
X-Google-Smtp-Source: AGHT+IEKLWxJ+3ZDPhd6Nur5aJ4UIrpgeIvU4A77msFQxuJvAzWesSOKns525AqkHpq9Nh3NzkYgqA==
X-Received: by 2002:a05:6808:2209:b0:43f:228a:2098 with SMTP id
 5614622812f47-43f4ceb1890mr1512041b6e.42.1759170401179; 
 Mon, 29 Sep 2025 11:26:41 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:5542:a82d:8748:cc0b])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-43f51238c63sm2285632b6e.22.2025.09.29.11.26.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Sep 2025 11:26:39 -0700 (PDT)
Date: Mon, 29 Sep 2025 13:26:35 -0500
From: Corey Minyard <corey@minyard.net>
To: Jinhui Guo <guojinhui.liam@bytedance.com>
Message-ID: <aNrPW4AEfJhyh4rO@mail.minyard.net>
References: <20250929081602.1901-1-guojinhui.liam@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250929081602.1901-1-guojinhui.liam@bytedance.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Sep 29, 2025 at 04:16:02PM +0800, Jinhui Guo wrote:
 > The command "ipmi -b -t" would occasionally fail: > #ipmitool -b 6 -t 0x2c
 raw 0x6 0x01 > Unable to send command: Invalid argument > Unabl [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.44 listed in wl.mailspike.net]
X-Headers-End: 1v3IxJ-0008Of-Qn
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Close the race between
 __scan_channels() and deliver_response()
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Sep 29, 2025 at 04:16:02PM +0800, Jinhui Guo wrote:
> The command "ipmi -b -t" would occasionally fail:
>   #ipmitool -b 6 -t 0x2c raw 0x6 0x01
>   Unable to send command: Invalid argument
>   Unable to send RAW command (channel=0x6 netfn=0x6 lun=0x0 cmd=0x1)
> 
> The race window between __scan_channels() and deliver_response() causes
> the parameters of some channels to be set to 0.
> 
> 1.[CPUA] After ipmi_add_smi() calling __bmc_get_device_id() ->
>          __scan_channels(), the intf->channels_ready is set to true and
> 	 is never cleared by any function. ipmi_add_smi() then invokes
> 	 __scan_channels(), which issues an IPMI request and waits with
> 	 wait_event() until all channels have been scanned. wait_event()
>          internally calls might_sleep(), which might yield the CPU.
>          (wait_event() could also be interrupted by an interrupt, causing
> 	 the task to yield the CPU.)
> 2.[CPUB] deliver_response() is invoked when the CPU receives the IPMI
>          response. After processing a IPMI response, deliver_response()
>          directly assigns intf->wchannels to intf->channel_list and sets
> 	 intf->channels_ready to true. However, not all channels are actually
> 	 ready for use.
> 3.[CPUA] Since intf->channels_ready is already true, wait_event() never
>          enters __wait_event(). __scan_channels() immediately clears
> 	 intf->null_user_handler and exits.
> 4.[CPUB] Once intf->null_user_handler is set to NULL, deliver_response()
>          ignores further IPMI responses, leaving the remaining channels
> 	 zero-initialized and unusable.
> 
> CPUA                             CPUB
> -------------------------------  -----------------------------
> ipmi_add_smi()
>  __scan_channels()
>   intf->null_user_handler
>         = channel_handler;
>   send_channel_info_cmd(intf,
>         0);
>   wait_event(intf->waitq,
> 	intf->channels_ready);
>    do {
>     might_sleep();
>                                  deliver_response()
>                                   channel_handler()
>                                    intf->channel_list =
> 				         intf->wchannels + set;
>                                    intf->channels_ready = true;
>                                    send_channel_info_cmd(intf,
> 				          intf->curr_channel);
>     if (condition)
>      break;
>     __wait_event(wq_head,
> 	    condition);
>    } while(0)
>   intf->null_user_handler
>         = NULL;
>                                  deliver_response()
>                                   if (!msg->user)
>                                    if (intf->null_user_handler)
>                                     rv = -EINVAL;
>                                   return rv;
> -------------------------------  -----------------------------
> 
> Fix the race between __scan_channels() and deliver_response() with the
> following changes.
> 
> 1. Drop the redundant __scan_channels() call in ipmi_add_smi(), the
>    function is already invoked via ipmi_add_smi() -> __bmc_get_device_id()
>    -> __scan_channels().

It's only called conditionally in __bmc_get_device_id(), what if it's
not called there?

> 2. channel_handler() sets intf->channels_ready to true but no one clears
>    it, preventing __scan_channels() from rescanning channels. Clear
>    intf->channels_ready to false in channel_handler() before starting
>    the channel scan.

This is mostly the intent.  The channels shouldn't change unless the BMC software changes.

The only exception would be after the comment:
    /* Version info changes, scan the channels again. */
    __scan_channels(intf, &bmc->fetch_id);

In that case, since the BMC has changed, you want to rescan the channels.
So you would want to reset that flag there.

> 3. Only assign intf->channel_list = intf->wchannels and set
>    intf->channels_ready = true in channel_handler() after all channels
>    have been successfully scanned or after failing to send the IPMI
>    request.

Yeah, that's a bug.

Normal style is to leave the {} in if any part of the if statement has
braces.

Also, the above three are independent problems; they should be separate
patches.

Thanks,

-corey

> 
> Signed-off-by: Jinhui Guo <guojinhui.liam@bytedance.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 8e9050f99e9e..73dab3b21221 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -3405,11 +3405,8 @@ channel_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
>  			intf->channel_list = intf->wchannels + set;
>  			intf->channels_ready = true;
>  			wake_up(&intf->waitq);
> -		} else {
> -			intf->channel_list = intf->wchannels + set;
> -			intf->channels_ready = true;
> +		} else
>  			rv = send_channel_info_cmd(intf, intf->curr_channel);
> -		}
>  
>  		if (rv) {
>  			/* Got an error somehow, just give up. */
> @@ -3433,6 +3430,9 @@ static int __scan_channels(struct ipmi_smi *intf, struct ipmi_device_id *id)
>  {
>  	int rv;
>  
> +	/* Clear channels_ready to force channels rescan. */
> +	intf->channels_ready = false;
> +
>  	if (ipmi_version_major(id) > 1
>  			|| (ipmi_version_major(id) == 1
>  			    && ipmi_version_minor(id) >= 5)) {
> @@ -3633,12 +3633,6 @@ int ipmi_add_smi(struct module         *owner,
>  		goto out_err_started;
>  	}
>  
> -	mutex_lock(&intf->bmc_reg_mutex);
> -	rv = __scan_channels(intf, &id);
> -	mutex_unlock(&intf->bmc_reg_mutex);
> -	if (rv)
> -		goto out_err_bmc_reg;
> -
>  	intf->nr_users_devattr = dev_attr_nr_users;
>  	sysfs_attr_init(&intf->nr_users_devattr.attr);
>  	rv = device_create_file(intf->si_dev, &intf->nr_users_devattr);
> -- 
> 2.20.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
