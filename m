Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D02C95AECD
	for <lists+openipmi-developer@lfdr.de>; Thu, 22 Aug 2024 09:18:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sh251-0002RA-4i;
	Thu, 22 Aug 2024 07:17:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <iivanov@suse.de>) id 1sh24y-0002Qz-UQ
 for openipmi-developer@lists.sourceforge.net;
 Thu, 22 Aug 2024 07:17:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4B79cYTjR2Bgjzg3ZSIzh3as+7VYTk7wzTMIDOp2bMI=; b=Y++c36G+Nj66tK3oJRQ1la6MV1
 tmF7n/Qw1QZgqQPI3jHcvqGAYyHc2x/P4i4MfzvSbMv/Mvz0/hQRvqmAkszPmrOoD/gN2HBylXfZD
 wMP2EWJiQDxQH/kpJlPaM9BlBsoA/Xxf8vLYY6y1J3uYFOQ2K1ZRF1Jm5OfoyKy0gJlM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4B79cYTjR2Bgjzg3ZSIzh3as+7VYTk7wzTMIDOp2bMI=; b=LkGOwm7L7SXuagX66dIw3PVe0G
 Wu3vVcmsYKplsozJt0Q46M2gKyH/UhZ5hG+6M+NbKRZoT+J8YJ9VWkdrmb+AUFfadI9vGk5Ym7YX3
 sxz3+KSMLe9yTNmdEYICyQ+dm5u4UAwkbG8+5Au52nxZRLXqpXEJCnGeHtUR/yb1L/Xc=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sh24x-0000o5-MK for openipmi-developer@lists.sourceforge.net;
 Thu, 22 Aug 2024 07:17:56 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id B78C1219A8;
 Thu, 22 Aug 2024 07:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1724311068; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4B79cYTjR2Bgjzg3ZSIzh3as+7VYTk7wzTMIDOp2bMI=;
 b=Q72qKnkXJPxMdxYAIZiIe0ZNwrJPyC41M8YAkNm02WVV503/kL0Gj4EesAb4WQK0uj9XxF
 xr7GErLCaepvaiTwsvYfZ1HjXYb/hwCXRLLhXMGGYd6lUK4swpYRRvucqVqcdBaBZD9lws
 /raADIq4cOqqf9om738XXrzMeQuK0eg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1724311068;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4B79cYTjR2Bgjzg3ZSIzh3as+7VYTk7wzTMIDOp2bMI=;
 b=8CMsFHiyDymxqJTfoeaoY6/Ij6cSHpQvI3PU21KfIvh3W0PyJt9nsuQqnmcX9bLl7Euvp4
 QOI9zu3V8yzYWeDQ==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1724311067; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4B79cYTjR2Bgjzg3ZSIzh3as+7VYTk7wzTMIDOp2bMI=;
 b=r86aGzxQThOLY8RemsF3WGfSSYo9FOF5OEyXRmgPXJ4EN2HJfRWzW1+97GgVTYhl2fbTPS
 EekZoR1oitUJrrQLwvpivIuMr18sVmwFRQ41mxTwBVb/41Ax3XH4t41VLt7lcBdyGnnxwK
 M832NQqlx1oHDjAJR7NDxtkP1j11pt4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1724311067;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4B79cYTjR2Bgjzg3ZSIzh3as+7VYTk7wzTMIDOp2bMI=;
 b=9JPH6G4R3OW5y9bTD0l44lx/HUVCY3SVBs2UCx4PwaKZLEJGBbnU1j+jjCtXwfFWVD1WUC
 DbSrpBY0K46Et4Bw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 9E32713297;
 Thu, 22 Aug 2024 07:17:47 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id h0NUJBvmxmbQUgAAD6G6ig
 (envelope-from <iivanov@suse.de>); Thu, 22 Aug 2024 07:17:47 +0000
Date: Thu, 22 Aug 2024 10:22:55 +0300
From: "Ivan T. Ivanov" <iivanov@suse.de>
To: Corey Minyard <corey@minyard.net>
Message-ID: <20240822072255.fncuy4xdkglnf3bn@localhost.localdomain>
References: <20240816065458.117986-1-iivanov@suse.de>
 <ZsU9SRlQgzQn8bDs@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZsU9SRlQgzQn8bDs@mail.minyard.net>
X-Spam-Level: 
X-Spamd-Result: default: False [-4.30 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 NEURAL_HAM_SHORT(-0.20)[-0.999]; MIME_GOOD(-0.10)[text/plain];
 RCVD_VIA_SMTP_AUTH(0.00)[]; ARC_NA(0.00)[];
 MIME_TRACE(0.00)[0:+]; MISSING_XM_UA(0.00)[];
 TO_DN_SOME(0.00)[]; RCVD_TLS_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_HAS_DN(0.00)[];
 RCPT_COUNT_THREE(0.00)[3]; FROM_EQ_ENVFROM(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email, minyard.net:email,
 imap1.dmz-prg2.suse.org:helo, localhost.localdomain:mid]
X-Spam-Score: -4.30
X-Spam-Flag: NO
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, On 08-20 20:05, Corey Minyard wrote: > > If an IPMI
 SSIF device is probed and there is something there, but > probably not an
 actual BMC, the code would just issue a lot of errors > before it failed.
 [...] Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.130 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.130 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [195.135.223.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sh24x-0000o5-MK
Subject: Re: [Openipmi-developer] [PATCH] ipmi:ssif: Improve detecting
 during probing
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Corey,

On 08-20 20:05, Corey Minyard wrote:
> 
> If an IPMI SSIF device is probed and there is something there, but
> probably not an actual BMC, the code would just issue a lot of errors
> before it failed.  We kind of need these errors to help with certain
> issues, and some of the failure reports are non-fatal.
> 
> However, a get device id command should alway work.  If that fails,
> nothing else is going to work and it's a pretty good indication that
> there's no valid BMC there.  So issue and check that command and bail
> if it fails.
> 
> Reported-by: Ivan T. Ivanov <iivanov@suse.de>
> Signed-off-by: Corey Minyard <corey@minyard.net>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 24 +++++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
> 
> Ivan, is it possible for you to test this patch on the broken system?

This exact system is not available to me at the moment. I have few
other machines on which I could test this.

> It should work based on what you reported, but it's nice to be sure.
> 
> Also, I discovered that the detect function is kind of bogus, it only
> works on an address list that isn't present (any more).  However, I
> re-used it for my purposes in the probe function.
> 
> Thanks.
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index e8e7b832c060..4c403e7a9fc8 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1368,8 +1368,20 @@ static int ssif_detect(struct i2c_client *client, struct i2c_board_info *info)
>  	rv = do_cmd(client, 2, msg, &len, resp);
>  	if (rv)
>  		rv = -ENODEV;

What is my worry is that in case of SMBus errors, device is there but
for some reason it got stuck/crashed or whatever, so will get out of
detect function from here and with ENODEV return code probe function
will be called for no reason.

> -	else
> +	else {
> +	    if (len < 3) {
> +		rv = -ENODEV;

No point to call probe(), right?

> +	    } else {
> +		struct ipmi_device_id id;
> +
> +		rv = ipmi_demangle_device_id(resp[0] >> 2, resp[1],
> +					     resp + 2, len - 2, &id);
> +		if (rv)
> +		    rv = -ENODEV; /* Error means a BMC probably isn't there. */

Same.

> +	    }
> +	    if (!rv && info)
>  		strscpy(info->type, DEVICE_NAME, I2C_NAME_SIZE);
> +	}
>  	kfree(resp);
>  	return rv;
>  }
> @@ -1704,6 +1716,16 @@ static int ssif_probe(struct i2c_client *client)
>  		ipmi_addr_src_to_str(ssif_info->addr_source),
>  		client->addr, client->adapter->name, slave_addr);
>  
> +	/*
> +	 * Send a get device id command and validate its response to
> +	 * make sure a valid BMC is there.
> +	 */
> +	rv = ssif_detect(client, NULL);
> +	if (rv) {
> +		dev_err(&client->dev, "Not present\n");
> +		goto out;
> +	}
> +

The point is that even after this point IPMI device can start failing
to properly communicate with the OS, real SMBus errors, like EREMOTEIO
in my case, but unfortunately code bellow do not handle this very well,
I think.


>  	/* Now check for system interface capabilities */
>  	msg[0] = IPMI_NETFN_APP_REQUEST << 2;
>  	msg[1] = IPMI_GET_SYSTEM_INTERFACE_CAPABILITIES_CMD;
> -- 
> 2.34.1
> 

Regards,
Ivan



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
