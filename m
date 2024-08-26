Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC9795EFB0
	for <lists+openipmi-developer@lfdr.de>; Mon, 26 Aug 2024 13:27:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1siXs5-0008RU-Ig;
	Mon, 26 Aug 2024 11:26:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <iivanov@suse.de>) id 1siXs4-0008RO-GR
 for openipmi-developer@lists.sourceforge.net;
 Mon, 26 Aug 2024 11:26:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PmKJMKcI/y7dNkyLfi7cvnd87hl3q4+K6RJHxGte1Ho=; b=ir/PpikBYPWeFAkZDRKfL1+3oQ
 QFzwiTVWIraG6zWuFkjXuZRucYKxswDwXLoxgo2XiP6ot8M4cRWFVrUM2NrwwelfRA8Ay2x/u9jwr
 s3wFbC06OPyqRr7+MyzaLkxYp+lTmDuZp4ZhGPAGAQR+t9+ZQms1rv9rEQjkLuAb15mk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PmKJMKcI/y7dNkyLfi7cvnd87hl3q4+K6RJHxGte1Ho=; b=jn02B43S/POjBNOO0GP2r7FkHa
 pRaS/fJOlUlCxgRCSmjMfjvat/tp7N9veCcsVKHKKVUjB6xFi8jrxhrDsQ0NMR+PBPSkjForrnZBV
 9AKDA2fku+Jl7ZikhTTUD0OKNRfqYejwYDSEhNJ3Our49ZFeXgEZq8ZTHFM7iNCHC13I=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1siXs3-0000rM-2P for openipmi-developer@lists.sourceforge.net;
 Mon, 26 Aug 2024 11:26:51 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id B048A21AA6;
 Mon, 26 Aug 2024 11:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1724671599; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PmKJMKcI/y7dNkyLfi7cvnd87hl3q4+K6RJHxGte1Ho=;
 b=NGzFtWFgfupz64ZkEalBdAnpB8jBTMP4bB1p6YZNup469U00MgLwJIFTDjalvmPwsfY6pZ
 cjdEs6jHLjXh4EdkmvfBMlmcWgz0xxZUL1WXd8U+p7q+6Bk2LtRAcfseQP8WHDMmRMPuf0
 Le2kzI2a7x8MGp8DX5cnySqp7oxlHTc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1724671599;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PmKJMKcI/y7dNkyLfi7cvnd87hl3q4+K6RJHxGte1Ho=;
 b=t1oSoP1EGPxRQWzB5Y+LzUiSUQrgD9hepJW+8tSbTKztRhH3c0nuc9GTNuwnTUfjIuz9aM
 +WsyDa+d5x77X4DQ==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1724671599; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PmKJMKcI/y7dNkyLfi7cvnd87hl3q4+K6RJHxGte1Ho=;
 b=NGzFtWFgfupz64ZkEalBdAnpB8jBTMP4bB1p6YZNup469U00MgLwJIFTDjalvmPwsfY6pZ
 cjdEs6jHLjXh4EdkmvfBMlmcWgz0xxZUL1WXd8U+p7q+6Bk2LtRAcfseQP8WHDMmRMPuf0
 Le2kzI2a7x8MGp8DX5cnySqp7oxlHTc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1724671599;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PmKJMKcI/y7dNkyLfi7cvnd87hl3q4+K6RJHxGte1Ho=;
 b=t1oSoP1EGPxRQWzB5Y+LzUiSUQrgD9hepJW+8tSbTKztRhH3c0nuc9GTNuwnTUfjIuz9aM
 +WsyDa+d5x77X4DQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 8CCF61398D;
 Mon, 26 Aug 2024 11:26:39 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id wVkSIG9mzGaEFgAAD6G6ig
 (envelope-from <iivanov@suse.de>); Mon, 26 Aug 2024 11:26:39 +0000
Date: Mon, 26 Aug 2024 14:31:50 +0300
From: "Ivan T. Ivanov" <iivanov@suse.de>
To: Corey Minyard <corey@minyard.net>
Message-ID: <20240826113150.42lyq6nmkyn53cv6@localhost.localdomain>
References: <20240816065458.117986-1-iivanov@suse.de>
 <ZsU9SRlQgzQn8bDs@mail.minyard.net>
 <20240822072255.fncuy4xdkglnf3bn@localhost.localdomain>
 <ZsdN8sBIUYetCUOp@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZsdN8sBIUYetCUOp@mail.minyard.net>
X-Spam-Level: 
X-Spamd-Result: default: False [-4.30 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_TRACE(0.00)[0:+];
 ARC_NA(0.00)[]; FUZZY_BLOCKED(0.00)[rspamd.com];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FROM_HAS_DN(0.00)[]; RCPT_COUNT_THREE(0.00)[3];
 TO_DN_SOME(0.00)[]; FROM_EQ_ENVFROM(0.00)[];
 RCVD_TLS_ALL(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 MISSING_XM_UA(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo]
X-Spam-Score: -4.30
X-Spam-Flag: NO
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 08-22 09:40,
 Corey Minyard wrote: > > > +++ b/drivers/char/ipmi/ipmi_ssif.c
 > > > @@ -1368, 8 +1368, 20 @@ static int ssif_detect(struct i2c_client *client,
 struct i2c_board_info *info) > > > rv = do [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.130 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.130 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [195.135.223.130 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1siXs3-0000rM-2P
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

Hi,

On 08-22 09:40, Corey Minyard wrote:
> > > +++ b/drivers/char/ipmi/ipmi_ssif.c
> > > @@ -1368,8 +1368,20 @@ static int ssif_detect(struct i2c_client *client, struct i2c_board_info *info)
> > >  	rv = do_cmd(client, 2, msg, &len, resp);
> > >  	if (rv)
> > >  		rv = -ENODEV;
> > 
> > What is my worry is that in case of SMBus errors, device is there but
> > for some reason it got stuck/crashed or whatever, so will get out of
> > detect function from here and with ENODEV return code probe function
> > will be called for no reason.
> 
> That's not how the i2c code works.  See my next comment.
> 
> > 
> > > -	else
> > > +	else {
> > > +	    if (len < 3) {
> > > +		rv = -ENODEV;
> > 
> > No point to call probe(), right?
> 
> Originally (before I add the call from ssif_probe()), this is not involved in
> the probe() call.  Instead, the detect function is involved in calling a
> table of addresses in driver->address_list.  So in this case this
> function is never called at all from the i2c code, since there is no
> address list.

I see, thank you for explanation.

> > >  
> > > +	/*
> > > +	 * Send a get device id command and validate its response to
> > > +	 * make sure a valid BMC is there.
> > > +	 */
> > > +	rv = ssif_detect(client, NULL);
> > > +	if (rv) {
> > > +		dev_err(&client->dev, "Not present\n");
> > > +		goto out;
> > > +	}
> > > +
> > 
> > The point is that even after this point IPMI device can start failing
> > to properly communicate with the OS, real SMBus errors, like EREMOTEIO
> > in my case, but unfortunately code bellow do not handle this very well,
> > I think.
> 
> It is possible that the BMC gets rebooted or something between the call
> to ssif_detect() and the code below, but the probability is really low.
> If it answers a detect, the rest of the things should work.
> 

I have my daubs, but patch proposed will fix the issue that I see.

Thank you,
Ivan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
