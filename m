Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE00ED6A76
	for <lists+openipmi-developer@lfdr.de>; Mon, 14 Oct 2019 21:57:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iK6TM-00019r-PA; Mon, 14 Oct 2019 19:57:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iK6TK-00019k-Ve
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Oct 2019 19:57:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S01INIyV+fklkeKDjyJw8HpiViode75kudgiuVlNQho=; b=gAzPc6yF0LDRJaACFNrV1ugeSW
 QNt2J9HwC5DNguvSVc5jCkIcib5xipesAvPxKhUrl3z5QQzDafbYFxFTA2TY6atYcORMB/NqKdkSZ
 NIjtqtjHoQrCv8LOFTk0ZaSeYzGQfOQCAOJdyz8wI9U566sePjEmJ/Dw0E9YY4TKnOoE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S01INIyV+fklkeKDjyJw8HpiViode75kudgiuVlNQho=; b=UCLRWLrWqQPIki3O8+yW7cGrZV
 HgS9wJp+aPb0xz/rZuK3nlHh5YSdyl4G9loOhFqglg5E30p2iS4FvG7W4D11Mn56ff0qNjZ88t4ur
 iFXxA1PSdzyGtrN/dspgYnzlwCu6e1P/PM38qKXQH/7TIcu6TLGocGL3nCd5Z/tk3Xqs=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iK6TJ-000rhZ-Iz
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Oct 2019 19:57:38 +0000
Received: by mail-oi1-f196.google.com with SMTP id k25so14751231oiw.13
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 14 Oct 2019 12:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=S01INIyV+fklkeKDjyJw8HpiViode75kudgiuVlNQho=;
 b=GaZ52buO0OTwi5HR740F/BoLVwdE74ahz0/3cNcywM9XNFnxec7OMXPmDsTphcpoPv
 iyI3apF1YoggNbv+eYVxtVVjgD4cKmyjmNT3ESAIKD5SrT6NeVeXcGUJZy6DbWaFCb77
 1EP2Ylo4qA+ZraO7/Qch347HPhNcYbaad69ue6EMeRgux1XGUWI6eIReccXR3pMO9j84
 J8EM1orKRUvXOIKA/yFhrsyu1gWcJdWldjoyLH3vr3oi0h1eHm3SHmOvspRgcMOs1ksK
 rreTm6oXw6b7d/o7tNA/cVC3hxBiVet37Jero9E7SHp09fHPsu+2ShvLbZwtvn0tPybL
 Zi+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=S01INIyV+fklkeKDjyJw8HpiViode75kudgiuVlNQho=;
 b=puZSv2ODOi9NnhBrTmem+X+z6Zb+1/8BOl0aYGo+l4R42QY07owUCjGF+VgtRsVidj
 l+UdwTX0Y525Kg5X/gOx+vNWmgg1m3ks2yV4ijQpFAD1y00k0iKbgxroRnpQ06UDnn3c
 /b6cXowHsz0EWTUAhAUwjtn83nunSiq0y6rjSMXxKqmcJIWQtF8iX/fmbjEjCgFx1V2n
 605wJIuGUT4H/DCFgx2+PP7MIlmdR1IZKhvads2XwPCAi4cVFfWG3npnJ+xB31c32rbN
 S1HAq2vGYiPYy8QRM9N4p4ZNm/WlGh3giCOu2NpXhuCUBQG+wIHbKmmTMr0JdulWMdJQ
 1uHQ==
X-Gm-Message-State: APjAAAXRD0LcDS3GamiRGO1r5LURiL/tX4l9yX0+b7IMS0twM+TsxlTm
 0X5SJ9K30KTSDRBcLD+gJb6J3PA=
X-Google-Smtp-Source: APXvYqxfBJqbteaediDQIkvlxWR9Mog/vfLwxiN/QCbBcmSNo6l3Uzn2wZ4jri5q1YSpG0Fg8pcSsw==
X-Received: by 2002:aca:3001:: with SMTP id w1mr8792629oiw.162.1571083051520; 
 Mon, 14 Oct 2019 12:57:31 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id x140sm5965108oix.42.2019.10.14.12.57.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 12:57:30 -0700 (PDT)
Received: from t560 (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 3A0C7180046;
 Mon, 14 Oct 2019 19:57:30 +0000 (UTC)
Date: Mon, 14 Oct 2019 14:57:28 -0500
From: Corey Minyard <minyard@acm.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20191014195728.GG25427@t560>
References: <20191011155036.36748-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011155036.36748-1-andriy.shevchenko@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iK6TJ-000rhZ-Iz
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi: use %*ph to print small
 buffer
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
Cc: Joe Perches <joe@perches.com>, openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andy.shevchenko@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Oct 11, 2019 at 06:50:36PM +0300, Andy Shevchenko wrote:
> From: Andy Shevchenko <andy.shevchenko@gmail.com>
> 
> Use %*ph format to print small buffer as hex string.
> 
> The change is safe since the specifier can handle up to 64 bytes and taking
> into account the buffer size of 100 bytes on stack the function has never been
> used to dump more than 32 bytes. Note, this also avoids potential buffer
> overflow if the length of the input buffer is bigger.

This is an improvment, thanks, it is in queue in the next tree and
queued for the next merge window.

Thanks, Andy and Jes, for sorting this out while I was on vacation,

-corey

> 
> This completely eliminates ipmi_debug_msg() in favour of Dynamic Debug.
> 
> Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
> - eliminate ipmi_debug_msg() in favour of Dynamic Debug (Joe)
>  drivers/char/ipmi/ipmi_msghandler.c | 27 ++++-----------------------
>  1 file changed, 4 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 2aab80e19ae0..1768b81aaf78 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -44,25 +44,6 @@ static void need_waiter(struct ipmi_smi *intf);
>  static int handle_one_recv_msg(struct ipmi_smi *intf,
>  			       struct ipmi_smi_msg *msg);
>  
> -#ifdef DEBUG
> -static void ipmi_debug_msg(const char *title, unsigned char *data,
> -			   unsigned int len)
> -{
> -	int i, pos;
> -	char buf[100];
> -
> -	pos = snprintf(buf, sizeof(buf), "%s: ", title);
> -	for (i = 0; i < len; i++)
> -		pos += snprintf(buf + pos, sizeof(buf) - pos,
> -				" %2.2x", data[i]);
> -	pr_debug("%s\n", buf);
> -}
> -#else
> -static void ipmi_debug_msg(const char *title, unsigned char *data,
> -			   unsigned int len)
> -{ }
> -#endif
> -
>  static bool initialized;
>  static bool drvregistered;
>  
> @@ -2267,7 +2248,7 @@ static int i_ipmi_request(struct ipmi_user     *user,
>  		ipmi_free_smi_msg(smi_msg);
>  		ipmi_free_recv_msg(recv_msg);
>  	} else {
> -		ipmi_debug_msg("Send", smi_msg->data, smi_msg->data_size);
> +		pr_debug("Send: %*ph\n", smi_msg->data_size, smi_msg->data);
>  
>  		smi_send(intf, intf->handlers, smi_msg, priority);
>  	}
> @@ -3730,7 +3711,7 @@ static int handle_ipmb_get_msg_cmd(struct ipmi_smi *intf,
>  		msg->data[10] = ipmb_checksum(&msg->data[6], 4);
>  		msg->data_size = 11;
>  
> -		ipmi_debug_msg("Invalid command:", msg->data, msg->data_size);
> +		pr_debug("Invalid command: %*ph\n", msg->data_size, msg->data);
>  
>  		rcu_read_lock();
>  		if (!intf->in_shutdown) {
> @@ -4217,7 +4198,7 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
>  	int requeue;
>  	int chan;
>  
> -	ipmi_debug_msg("Recv:", msg->rsp, msg->rsp_size);
> +	pr_debug("Recv: %*ph\n", msg->rsp_size, msg->rsp);
>  
>  	if ((msg->data_size >= 2)
>  	    && (msg->data[0] == (IPMI_NETFN_APP_REQUEST << 2))
> @@ -4576,7 +4557,7 @@ smi_from_recv_msg(struct ipmi_smi *intf, struct ipmi_recv_msg *recv_msg,
>  	smi_msg->data_size = recv_msg->msg.data_len;
>  	smi_msg->msgid = STORE_SEQ_IN_MSGID(seq, seqid);
>  
> -	ipmi_debug_msg("Resend: ", smi_msg->data, smi_msg->data_size);
> +	pr_debug("Resend: %*ph\n", smi_msg->data_size, smi_msg->data);
>  
>  	return smi_msg;
>  }
> -- 
> 2.23.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
