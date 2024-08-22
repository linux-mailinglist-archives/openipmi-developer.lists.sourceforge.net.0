Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE0E95B952
	for <lists+openipmi-developer@lfdr.de>; Thu, 22 Aug 2024 17:08:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sh9QJ-0006Ek-Rl;
	Thu, 22 Aug 2024 15:08:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1sh9QB-0006EV-00
 for openipmi-developer@lists.sourceforge.net;
 Thu, 22 Aug 2024 15:08:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v2BI5ynqFBhoBoWz1wdgqO1G8/PbBu+hf6d0XfvEXko=; b=JHHqTJJPs45KKv+0c/EoGymfNP
 euiUa+wBrAtpEp+1sINOHuhMk3NUCmxyszADiQj/rPHPHJv1bRTT7LMqFqiSZcuVMJmx8DCg9Zdwc
 CGJ3vIctOn8pfUVKuUVgETyVnstFCRw0GSM07MqXttJwMJ6iIbNoCi9F5Iucl5DdOyYo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v2BI5ynqFBhoBoWz1wdgqO1G8/PbBu+hf6d0XfvEXko=; b=Z+r0/Z20thJbbCrn0gQGm1oeM/
 Es8LPmB/mLXjRT3Orl/7PqYShVw+JVEWCCSiEsvR5R8EjKP2nmfaOcCPBi6yZn8DBqhlwTss2ZNuQ
 Zv2takt/GydO4KW6sPbkCPHzj5Ip9VETa8DvpeewqJNayssoZREta6YkLPs+PG2gwA1w=;
Received: from mail-pl1-f177.google.com ([209.85.214.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sh9Q6-0005vJ-Ve for openipmi-developer@lists.sourceforge.net;
 Thu, 22 Aug 2024 15:08:16 +0000
Received: by mail-pl1-f177.google.com with SMTP id
 d9443c01a7336-20231aa8908so8905605ad.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 22 Aug 2024 08:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1724339284; x=1724944084;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=v2BI5ynqFBhoBoWz1wdgqO1G8/PbBu+hf6d0XfvEXko=;
 b=HErGeoqWgUqbKOnch1GcD6Jf2OmdiBMptQDTVnlIjR+Y2+EE1BeDkwA4Wr/oJVZF3p
 cSQXW34uhCKqu7HVL3yObCCtCLv0/2K2Duf9T7e2ucudNzP+TX8aRJvTLprevJFOFk8E
 hhMfACo5YK7aoxXgRJdOw1IhAPdbPDbxFvL+37kO0OyLmriEE4zmtGVtUk+FGHoKZ08V
 qI51uMsNKCqrNPoRyeOecTojY1S3bz13T+Mf/Gu90GbdKpXQ4mPr36sEns/3ILmD8Ohc
 pIwWvjWOIHVdiAvvoGNrPRZXCUxRlsmggfTsRM6XLUXfelLdjKrhyJk2pojKUvSIEubv
 Mqxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724339284; x=1724944084;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=v2BI5ynqFBhoBoWz1wdgqO1G8/PbBu+hf6d0XfvEXko=;
 b=W915UC8ozpQJAYbNEGrb9oB8ugNDCj8eBSSUAKNTHzjUnNTj91FTGPZpKnTI/ZeE0Q
 lb05EoVfYZhyBTxPFgodFQ58CaYudbi+p9Vu6k8MCUwLryZZ6BVf+SBMKEFcRjIez+oR
 M6jFA2xNfTe2zDFsK5dw3HBAs/GKrj0Op5YXDyhd60nyEcGfR1s2DJa5dwN6yFHJVrK5
 fo6WC1UZNXlR2nI2rq2wev8wgoNbBqRH/tQl+S5bSQ04aWdrXtoQVfIAFZaOOOEqcwhY
 6PChp7DRa9e4LYOEWil5fIYJNPm6WLw3K+LHHAGNHC1u+sMixQ9ao9Y7Q6XHHI9y9cYu
 DErA==
X-Gm-Message-State: AOJu0YwljaKF3iiCNXEUBszdxPx2n7dwhC+eeRekqzS22NvZ/BgxSGNc
 exC2JcSXccKJPE0Oz9L2wvFQp/mxyF+AeI2vvLD0TzX06P3qjDHO6XhbLCP4BxUxZV6NAAdpC/M
 CTDE=
X-Google-Smtp-Source: AGHT+IEsSYDHHqm+C58leKzz0AgQbycyJyHK7W9kTO0a+Ck80Gt+pTCBBI6JswuJ+PWDlTw/jQ9dCQ==
X-Received: by 2002:a05:6830:3494:b0:703:6ac4:2ab8 with SMTP id
 46e09a7af769-70df851d524mr6573637a34.0.1724337652490; 
 Thu, 22 Aug 2024 07:40:52 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:57ae:721f:378d:39ca])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-70e03ad2847sm288312a34.46.2024.08.22.07.40.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2024 07:40:52 -0700 (PDT)
Date: Thu, 22 Aug 2024 09:40:50 -0500
From: Corey Minyard <corey@minyard.net>
To: "Ivan T. Ivanov" <iivanov@suse.de>
Message-ID: <ZsdN8sBIUYetCUOp@mail.minyard.net>
References: <20240816065458.117986-1-iivanov@suse.de>
 <ZsU9SRlQgzQn8bDs@mail.minyard.net>
 <20240822072255.fncuy4xdkglnf3bn@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240822072255.fncuy4xdkglnf3bn@localhost.localdomain>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Aug 22, 2024 at 10:22:55AM +0300,
 Ivan T. Ivanov wrote:
 > Hi Corey, > > On 08-20 20:05, Corey Minyard wrote: > > > > If an IPMI SSIF
 device is probed and there is something there, but > > prob [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.214.177 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.177 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.177 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.177 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sh9Q6-0005vJ-Ve
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Aug 22, 2024 at 10:22:55AM +0300, Ivan T. Ivanov wrote:
> Hi Corey,
> 
> On 08-20 20:05, Corey Minyard wrote:
> > 
> > If an IPMI SSIF device is probed and there is something there, but
> > probably not an actual BMC, the code would just issue a lot of errors
> > before it failed.  We kind of need these errors to help with certain
> > issues, and some of the failure reports are non-fatal.
> > 
> > However, a get device id command should alway work.  If that fails,
> > nothing else is going to work and it's a pretty good indication that
> > there's no valid BMC there.  So issue and check that command and bail
> > if it fails.
> > 
> > Reported-by: Ivan T. Ivanov <iivanov@suse.de>
> > Signed-off-by: Corey Minyard <corey@minyard.net>
> > ---
> >  drivers/char/ipmi/ipmi_ssif.c | 24 +++++++++++++++++++++++-
> >  1 file changed, 23 insertions(+), 1 deletion(-)
> > 
> > Ivan, is it possible for you to test this patch on the broken system?
> 
> This exact system is not available to me at the moment. I have few
> other machines on which I could test this.
> 
> > It should work based on what you reported, but it's nice to be sure.
> > 
> > Also, I discovered that the detect function is kind of bogus, it only
> > works on an address list that isn't present (any more).  However, I
> > re-used it for my purposes in the probe function.
> > 
> > Thanks.
> > 
> > diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> > index e8e7b832c060..4c403e7a9fc8 100644
> > --- a/drivers/char/ipmi/ipmi_ssif.c
> > +++ b/drivers/char/ipmi/ipmi_ssif.c
> > @@ -1368,8 +1368,20 @@ static int ssif_detect(struct i2c_client *client, struct i2c_board_info *info)
> >  	rv = do_cmd(client, 2, msg, &len, resp);
> >  	if (rv)
> >  		rv = -ENODEV;
> 
> What is my worry is that in case of SMBus errors, device is there but
> for some reason it got stuck/crashed or whatever, so will get out of
> detect function from here and with ENODEV return code probe function
> will be called for no reason.

That's not how the i2c code works.  See my next comment.

> 
> > -	else
> > +	else {
> > +	    if (len < 3) {
> > +		rv = -ENODEV;
> 
> No point to call probe(), right?

Originally (before I add the call from ssif_probe()), this is not involved in
the probe() call.  Instead, the detect function is involved in calling a
table of addresses in driver->address_list.  So in this case this
function is never called at all from the i2c code, since there is no
address list.

> 
> > +	    } else {
> > +		struct ipmi_device_id id;
> > +
> > +		rv = ipmi_demangle_device_id(resp[0] >> 2, resp[1],
> > +					     resp + 2, len - 2, &id);
> > +		if (rv)
> > +		    rv = -ENODEV; /* Error means a BMC probably isn't there. */
> 
> Same.
> 
> > +	    }
> > +	    if (!rv && info)
> >  		strscpy(info->type, DEVICE_NAME, I2C_NAME_SIZE);
> > +	}
> >  	kfree(resp);
> >  	return rv;
> >  }
> > @@ -1704,6 +1716,16 @@ static int ssif_probe(struct i2c_client *client)
> >  		ipmi_addr_src_to_str(ssif_info->addr_source),
> >  		client->addr, client->adapter->name, slave_addr);
> >  
> > +	/*
> > +	 * Send a get device id command and validate its response to
> > +	 * make sure a valid BMC is there.
> > +	 */
> > +	rv = ssif_detect(client, NULL);
> > +	if (rv) {
> > +		dev_err(&client->dev, "Not present\n");
> > +		goto out;
> > +	}
> > +
> 
> The point is that even after this point IPMI device can start failing
> to properly communicate with the OS, real SMBus errors, like EREMOTEIO
> in my case, but unfortunately code bellow do not handle this very well,
> I think.

It is possible that the BMC gets rebooted or something between the call
to ssif_detect() and the code below, but the probability is really low.
If it answers a detect, the rest of the things should work.

-corey

> 
> 
> >  	/* Now check for system interface capabilities */
> >  	msg[0] = IPMI_NETFN_APP_REQUEST << 2;
> >  	msg[1] = IPMI_GET_SYSTEM_INTERFACE_CAPABILITIES_CMD;
> > -- 
> > 2.34.1
> > 
> 
> Regards,
> Ivan
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
