Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F4476E31
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jul 2019 17:43:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hr2NW-0003Cz-RG; Fri, 26 Jul 2019 15:43:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hr2NV-0003Cm-Q1
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Jul 2019 15:43:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wzq/u6gg5tpORAwcNJogR+8nADriZ1W8ElUM9aiwQKU=; b=fKNnh1pG0bxaKxD4sAYRiPBE2q
 OKCwR+iGf4ywZU7TLp/fq82dPOYMAQmrhht4j2JbPR++/NsvYqmMFKHp2+ZKEfhmsfk0uV9OQX/dF
 GjUVqSjk6zq0e3rC0GF2Lln7SwG9xuMFb2vOM034bv43Kh9dyzAzav06zo8Y1vwEUeRU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wzq/u6gg5tpORAwcNJogR+8nADriZ1W8ElUM9aiwQKU=; b=lHtURqSbeMwg50zlxT+jYvmgi5
 Uf8OwvFL/joJ9tLoakJGldZelGp40rO5Yd+gCRxnkvwGvYniII3LuPYvpdWUIiwUFGwxCLwFviAHB
 59o7v2tl7UswFu27oOa5fOH2eWtPeIcNjX7gMrJbxEiNbTr5lvVmGbQ9YbfAlkjrasGI=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hr2NT-003wH2-PO
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Jul 2019 15:43:29 +0000
Received: by mail-ot1-f67.google.com with SMTP id d17so55815294oth.5
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 26 Jul 2019 08:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Wzq/u6gg5tpORAwcNJogR+8nADriZ1W8ElUM9aiwQKU=;
 b=hRxGLI9V5RVIIXy55t3XoRBdBcdmfpyXZpmXW79ACWodkfVyrxN1/fMe+Zq0sZA7OA
 CrmNoX26tkwyoA5UxT7YkwlRe9xi+LPbRc2j16o2pH92bSjGNxOi0nkAgJvi2HEtZebC
 9rQcfdHWidBsUa9MR019+JJy9A0lBG3+DqXid+BLlrBwiA5sXMDmnheVcYClSnOWkKTW
 LZUQW3OmdkhkRYv1gd2s3vQ74fiTxeSBO6U9AQ+YBfC9Zdy6+nFPbUydJstGg0KU7Fry
 bivQeNwRbJYmmRY3mW+4Ucs0zA3k5jPiEVcQWm40e6H8787iQVZMv0t6AtFxTKEFZ1mT
 4A0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=Wzq/u6gg5tpORAwcNJogR+8nADriZ1W8ElUM9aiwQKU=;
 b=Bj3rz/vs48rQ3gaY3mj83LBdViQU0LL43WBpc2InMQlieuLoq1+a9zsjF7wrr1HbXU
 iSVjqpODak/woly4ymyowldX+FT47NzPQnixG2Zj5WvwUQX3/5VCYoSc4z3mfRzgjJZx
 lWYidpj45XEp5ft6ckkYxzRz/qcj3x503fvTzXTNgeapovc+0hAqBsWd2Ud+86izTEGd
 0MdyTwzFW4LWsdHJKRSde1Tbfci6VMAZ6UJdZGZZe6h/j7R/oHlnyPrj46eIy8E32lzS
 07/zEl7CIhj1qTC/LKz1CyrFiAIoyKTmB+nqzYP+hzfBLTjb5avRoTiIEj3C17q98Ksa
 nvLQ==
X-Gm-Message-State: APjAAAXI53yC42iCEcBAT5/O8dr1mNyKPWw6v7Dpoo0rAhSXzKl/I0un
 pD+SYSYQfSbSyd9b5k/1/uAFC2w=
X-Google-Smtp-Source: APXvYqzyKceRakNy2NmUFLni60DuMXr2Hdolz7n2ZdlDJcH7Tot2LfjRhiFv8DJyy9j4OWMdIYuc2A==
X-Received: by 2002:a9d:6ac9:: with SMTP id m9mr39982673otq.242.1564155801004; 
 Fri, 26 Jul 2019 08:43:21 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id 11sm19118683otc.45.2019.07.26.08.43.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 08:43:20 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:90e7:f227:a269:2549])
 by serve.minyard.net (Postfix) with ESMTPSA id A94301800D1;
 Fri, 26 Jul 2019 15:43:19 +0000 (UTC)
Date: Fri, 26 Jul 2019 10:43:18 -0500
From: Corey Minyard <minyard@acm.org>
To: Asmaa Mnebhi <Asmaa@mellanox.com>
Message-ID: <20190726154318.GC5134@minyard.net>
References: <cover.1562687885.git.Asmaa@mellanox.com>
 <4a2b4f5397160dd8b40bd622cd8f4d541e5039cf.1562687885.git.Asmaa@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4a2b4f5397160dd8b40bd622cd8f4d541e5039cf.1562687885.git.Asmaa@mellanox.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mellanox.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hr2NT-003wH2-PO
Subject: Re: [Openipmi-developer] [PATCH v3 1/1] Support IPMB
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jul 09, 2019 at 12:00:31PM -0400, Asmaa Mnebhi wrote:
> Support receiving IPMB request on Satellite MC. The Satellite
> MC uses this code to handle the incoming IPMB request,
> generate a response and send it back to the requester.
> 
> For instance, if it is an IPMB bridged request, a BMC will be
> fowarding the request message to the responder device
> (satellite MC for example), so this code would be supported
> on the responder device, which will generate a response and send
> it back to the BMC.

If I understand this correctly, this code will handle receiving
commands from the IPMB and sending responses to the IPMB.  It will
also handle bridging messages from LAN or the system interface
to the IPMB.  So it will work for a satellite MC or for a BMC,
though the BMC part may be untested.

The only issue I have is that if someone else comes along with
a different IPMB interface, it won't be easy to interface in.
I'm ok with the code not being able to do this, as code can be
easily changed, but the user API in the conf file needs to be
flexible enough to handle it.  Instead of "ipmbdev", perhaps
a name that is more specific to the Linux interface you added.
I thing that would be enough.  A pluggable interface can be
added in the future if necessary.

Also, as part of that, there may be cases where a device is
not in /dev, especially in a highly customized embedded system,
so it's probably best to remove that check.

And you are using strncmp when referencing ipmbdev.  That means
anything beginning with "ipmbdev" will match.  I think just a
regular strcmp is best there.

Other than those nits, everything looks good.  It looks like
you are checking all your message lengths, the style looks
good, etc.

-corey

> 
> Signed-off-by: Asmaa Mnebhi <Asmaa@mellanox.com>
> ---
>  lanserv/Makefile.am          |   2 +-
>  lanserv/OpenIPMI/Makefile.am |   2 +-
>  lanserv/OpenIPMI/ipmbserv.h  |  62 ++++++++++
>  lanserv/OpenIPMI/serv.h      |   6 +
>  lanserv/README.design        |   6 +-
>  lanserv/bmc.c                |   4 +
>  lanserv/config.c             |   3 +
>  lanserv/ipmb_ipmi.c          | 261 +++++++++++++++++++++++++++++++++++++++++++
>  lanserv/ipmi_sim.c           |  86 ++++++++++++++
>  lanserv/lan.conf             |  10 ++
>  10 files changed, 439 insertions(+), 3 deletions(-)
>  create mode 100644 lanserv/OpenIPMI/ipmbserv.h
>  create mode 100644 lanserv/ipmb_ipmi.c
> 
> diff --git a/lanserv/Makefile.am b/lanserv/Makefile.am
> index 265b74a..659e957 100644
> --- a/lanserv/Makefile.am
> +++ b/lanserv/Makefile.am
> @@ -34,7 +34,7 @@ noinst_HEADERS = emu.h bmc.h
>  
>  libIPMIlanserv_la_SOURCES = lanserv_ipmi.c lanserv_asf.c priv_table.c \
>  	lanserv_oem_force.c lanserv_config.c config.c serv.c serial_ipmi.c \
> -	persist.c extcmd.c
> +	persist.c extcmd.c ipmb_ipmi.c
>  libIPMIlanserv_la_LIBADD = $(OPENSSLLIBS) -ldl $(RT_LIB)
>  libIPMIlanserv_la_LDFLAGS = -version-info $(LD_VERSION) \
>  	../utils/libOpenIPMIutils.la
> diff --git a/lanserv/OpenIPMI/Makefile.am b/lanserv/OpenIPMI/Makefile.am
> index ab1e514..7c17c10 100644
> --- a/lanserv/OpenIPMI/Makefile.am
> +++ b/lanserv/OpenIPMI/Makefile.am
> @@ -1,3 +1,3 @@
>  
>  pkginclude_HEADERS = lanserv.h serserv.h serv.h extcmd.h persist.h msg.h \
> -	mcserv.h
> +	mcserv.h ipmbserv.h
> diff --git a/lanserv/OpenIPMI/ipmbserv.h b/lanserv/OpenIPMI/ipmbserv.h
> new file mode 100644
> index 0000000..938ace3
> --- /dev/null
> +++ b/lanserv/OpenIPMI/ipmbserv.h
> @@ -0,0 +1,62 @@
> +/*
> + * ipmbserv.h
> + *
> + * IPMB server include file
> + *
> + * Copyright 2019 Mellanox
> + *
> + * This software is available to you under a choice of one of two
> + * licenses.  You may choose to be licensed under the terms of the GNU
> + * Lesser General Public License (GPL) Version 2 or the modified BSD
> + * license below.  The following disclamer applies to both licenses:
> + *
> + *  THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED
> + *  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
> + *  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
> + *  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
> + *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
> + *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
> + *  OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
> + *  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
> + *  TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
> + *  USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
> + *
> + * GNU Lesser General Public Licence
> + *
> + *  This program is free software; you can redistribute it and/or
> + *  modify it under the terms of the GNU Lesser General Public License
> + *  as published by the Free Software Foundation; either version 2 of
> + *  the License, or (at your option) any later version.
> + *
> + *  You should have received a copy of the GNU Lesser General Public
> + *  License along with this program; if not, write to the Free
> + *  Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
> + *
> + * Modified BSD Licence
> + *
> + * Redistribution and use in source and binary forms, with or without
> + * modification, are permitted provided that the following conditions
> + * are met:
> + *
> + *   1. Redistributions of source code must retain the above copyright
> + *      notice, this list of conditions and the following disclaimer.
> + *   2. Redistributions in binary form must reproduce the above
> + *      copyright notice, this list of conditions and the following
> + *      disclaimer in the documentation and/or other materials provided
> + *      with the distribution.
> + *   3. The name of the author may not be used to endorse or promote
> + *      products derived from this software without specific prior
> + *      written permission.
> + */
> +
> +#ifndef __IPMBSERV_H
> +#define __IPMBSERV_H
> +
> +#include <OpenIPMI/msg.h>
> +#include <OpenIPMI/serserv.h>
> +
> +typedef struct serserv_data_s ipmbserv_data_t;
> +
> +int ipmb_read_config(char **tokptr, sys_data_t *sys, const char **errstr);
> +
> +#endif /* __IPMBSERV_H */
> diff --git a/lanserv/OpenIPMI/serv.h b/lanserv/OpenIPMI/serv.h
> index d2087f5..3d40060 100644
> --- a/lanserv/OpenIPMI/serv.h
> +++ b/lanserv/OpenIPMI/serv.h
> @@ -219,6 +219,9 @@ struct channel_s
>       */
>      int (*oem_intf_recv_handler)(channel_t *chan, msg_t *msg,
>  				 unsigned char *rdata, unsigned int *rdata_len);
> +
> +    /* Set to 1 if ipmb channel 0 is listed in the config file, 0 otherwise */
> +    int prim_ipmb_in_cfg_file;
>  };
>  
>  struct user_s
> @@ -408,6 +411,9 @@ struct sys_data_s {
>      void (*cfree)(channel_t *chan, void *data);
>      int (*lan_channel_init)(void *info, channel_t *chan);
>      int (*ser_channel_init)(void *info, channel_t *chan);
> +    int (*ipmb_channel_init)(void *info, channel_t *chan);
> +
> +    char ipmidev[15];
>  };
>  
>  static inline void
> diff --git a/lanserv/README.design b/lanserv/README.design
> index 2f897c4..5260a6c 100644
> --- a/lanserv/README.design
> +++ b/lanserv/README.design
> @@ -31,6 +31,8 @@ msg.h - This defines an IPMI message that is passed around, and a few
>  
>  serserv.h - The configuration of a serial interface.
>  
> +ipmbserv.h - The configuration of an IPMB interface.
> +
>  serv.h - This defines data structures used by the whole system.
>  
>  
> @@ -77,6 +79,8 @@ emu.h - Defines the interface between bmc_xxx.c and emu_cmd.c
>  extcmd.c - Code for running the external command for dealing with LAN
>  	configuration.
>  
> +ipmb_ipmi.c - An implementation of the IPMB protocol.
> +
>  ipmi_sim.c - The main file for the ipmi_sim program.
>  
>  lanserv_asf.c - Handles LAN ASF commands.
> @@ -179,4 +183,4 @@ It is called from config.c to handle sol-specific configuration.
>  It installs a hook into lanserv_ipmi.c to receive the SOL payload and
>  send the SOL payload.
>  
> -It ties into bmc.c to handle SOL-specific commands.
> \ No newline at end of file
> +It ties into bmc.c to handle SOL-specific commands.
> diff --git a/lanserv/bmc.c b/lanserv/bmc.c
> index 93d0b3f..264b4ae 100644
> --- a/lanserv/bmc.c
> +++ b/lanserv/bmc.c
> @@ -613,6 +613,9 @@ ipmi_mc_enable(lmc_data_t *mc)
>  	    err = sys->lan_channel_init(sys->info, chan);
>  	else if (chan->medium_type == IPMI_CHANNEL_MEDIUM_RS232)
>  	    err = sys->ser_channel_init(sys->info, chan);
> +	else if ((chan->medium_type == IPMI_CHANNEL_MEDIUM_IPMB) &&
> +		((chan->channel_num != 0) || (chan->prim_ipmb_in_cfg_file)))
> +	    err = sys->ipmb_channel_init(sys->info, chan);
>  	else 
>  	    chan_init(chan);
>  	if (err) {
> @@ -802,6 +805,7 @@ ipmi_mc_alloc_unconfigured(sys_data_t *sys, unsigned char ipmb,
>      mc->ipmb_channel.protocol_type = IPMI_CHANNEL_PROTOCOL_IPMB;
>      mc->ipmb_channel.session_support = IPMI_CHANNEL_SESSION_LESS;
>      mc->ipmb_channel.active_sessions = 0;
> +    mc->ipmb_channel.prim_ipmb_in_cfg_file = 0;
>      mc->channels[0] = &mc->ipmb_channel;
>      mc->channels[0]->log = sys->clog;
>  
> diff --git a/lanserv/config.c b/lanserv/config.c
> index f0dda9f..976f8f2 100644
> --- a/lanserv/config.c
> +++ b/lanserv/config.c
> @@ -64,6 +64,7 @@
>  #include <OpenIPMI/serv.h>
>  #include <OpenIPMI/lanserv.h>
>  #include <OpenIPMI/serserv.h>
> +#include <OpenIPMI/ipmbserv.h>
>  #include <OpenIPMI/persist.h>
>  
>  void
> @@ -829,6 +830,8 @@ read_config(sys_data_t *sys,
>  	    }
>  	} else if (strcmp(tok, "user") == 0) {
>  	    err = get_user(&tokptr, sys, &errstr);
> +	} else if (strcmp(tok, "ipmb") == 0) {
> +	    err = ipmb_read_config(&tokptr, sys, &errstr);
>  	} else if (strcmp(tok, "serial") == 0) {
>  	    err = serserv_read_config(&tokptr, sys, &errstr);
>  	} else if (strcmp(tok, "sol") == 0) {
> diff --git a/lanserv/ipmb_ipmi.c b/lanserv/ipmb_ipmi.c
> new file mode 100644
> index 0000000..41e3b86
> --- /dev/null
> +++ b/lanserv/ipmb_ipmi.c
> @@ -0,0 +1,261 @@
> +/*
> + * ipmb_ipmi.c
> + *
> + * IPMB server interface.
> + *
> + * Copyright 2019 Mellanox
> + *
> + * This software is available to you under a choice of one of two
> + * licenses.  You may choose to be licensed under the terms of the GNU
> + * Lesser General Public License (GPL) Version 2 or the modified BSD
> + * license below.  The following disclamer applies to both licenses:
> + *
> + *  THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESS OR IMPLIED
> + *  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
> + *  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
> + *  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
> + *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
> + *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
> + *  OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
> + *  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
> + *  TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
> + *  USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
> + *
> + * GNU Lesser General Public Licence
> + *
> + *  This program is free software; you can redistribute it and/or
> + *  modify it under the terms of the GNU Lesser General Public License
> + *  as published by the Free Software Foundation; either version 2 of
> + *  the License, or (at your option) any later version.
> + *
> + *  You should have received a copy of the GNU Lesser General Public
> + *  License along with this program; if not, write to the Free
> + *  Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
> + *
> + * Modified BSD Licence
> + *
> + * Redistribution and use in source and binary forms, with or without
> + * modification, are permitted provided that the following conditions
> + * are met:
> + *
> + *   1. Redistributions of source code must retain the above copyright
> + *      notice, this list of conditions and the following disclaimer.
> + *   2. Redistributions in binary form must reproduce the above
> + *      copyright notice, this list of conditions and the following
> + *      disclaimer in the documentation and/or other materials provided
> + *      with the distribution.
> + *   3. The name of the author may not be used to endorse or promote
> + *      products derived from this software without specific prior
> + *      written permission.
> + */
> +
> +#include <string.h>
> +#include <stdlib.h>
> +#include <OpenIPMI/serv.h>
> +#include <OpenIPMI/ipmbserv.h>
> +#include <OpenIPMI/ipmi_mc.h>
> +
> +#define	IPMIDEV_MAX_SIZE	15
> +
> +static void
> +raw_send(ipmbserv_data_t *ipmb, unsigned char *data, unsigned int len)
> +{
> +    if (ipmb->sysinfo->debug & DEBUG_RAW_MSG)
> +	debug_log_raw_msg(ipmb->sysinfo, data, len, "Raw serial send:");
> +    ipmb->send_out(ipmb, data, len);
> +}
> +
> +/***********************************************************************
> + *
> + * IPMB message
> + *
> + * According to the IPMI spec, the IPMB message size should never
> + * exceed 32 bytes. So it doesn't harm to set the max size of the
> + * recv_msg to 36 bytes.
> + *
> + ***********************************************************************/
> +struct ipmb_data {
> +    unsigned char   recv_msg[IPMI_SIM_MAX_MSG_LENGTH + 4];
> +    unsigned int    recv_msg_len;
> +    int             recv_msg_too_many;
> +};
> +
> +static void
> +ipmb_handle_msg(unsigned char *imsg, unsigned int len, ipmbserv_data_t *ipmb)
> +{
> +    msg_t msg;
> +
> +    if (len < 8) {
> +	fprintf(stderr, "Message too short\n");
> +	return;
> +    }
> +    /* subtract len field and checksum */
> +    len--;
> +    imsg++;
> +
> +    if (ipmb_checksum(imsg, len, 0) != 0) {
> +	fprintf(stderr, "Message checksum failure\n");
> +	return;
> +    }
> +    len--;
> +
> +    memset(&msg, 0, sizeof(msg));
> +
> +    msg.rs_addr = imsg[0];
> +    msg.netfn = imsg[1] >> 2;
> +    msg.rs_lun = imsg[1] & 3;
> +    /* imsg[2] is first checksum */
> +    msg.rq_addr = imsg[3];
> +    msg.rq_seq = imsg[4] >> 2;
> +    msg.rq_lun = imsg[4] & 3;
> +    msg.cmd = imsg[5];
> +
> +    msg.len = len - 6;
> +    msg.data = imsg + 6;
> +
> +    msg.src_addr = NULL;
> +    msg.src_len = 0;
> +
> +    channel_smi_send(&ipmb->channel, &msg);
> +}
> +
> +static void
> +ipmb_handle_char(unsigned char ch, ipmbserv_data_t *ipmb)
> +{
> +    struct ipmb_data *info = ipmb->codec_info;
> +    unsigned int len = info->recv_msg_len;
> +
> +    if (ipmb->bind_fd == 0) {
> +	if (info->recv_msg_len != 0) {
> +	    ipmb_handle_msg(info->recv_msg, info->recv_msg_len, ipmb);
> +	    info->recv_msg_len = 0;
> +	}
> +	return;
> +    }
> +
> +    if (len >= sizeof(info->recv_msg))
> +	return;
> +
> +    info->recv_msg[len] = ch;
> +    info->recv_msg_len++;
> +}
> +
> +static void
> +ipmb_send(msg_t *imsg, ipmbserv_data_t *ipmb)
> +{
> +    unsigned char msg[(IPMI_SIM_MAX_MSG_LENGTH + 7) * 3];
> +    unsigned int msg_len;
> +
> +    msg[0] = imsg->len + 7;
> +    msg[1] = imsg->rs_addr;
> +    msg[2] = (imsg->netfn << 2) | imsg->rs_lun;
> +    msg[3] = -ipmb_checksum(msg + 1, 2, 0);
> +    msg[4] = imsg->rq_addr;
> +    msg[5] = (imsg->rq_seq << 2) | imsg->rq_lun;
> +    msg[6] = imsg->cmd;
> +    memcpy(msg + 7, imsg->data, imsg->len);
> +    msg_len = imsg->len + 7;
> +    msg[msg_len] = -ipmb_checksum(msg + 4, msg_len - 4, 0);
> +    msg_len++;
> +
> +    raw_send(ipmb, msg, msg_len);
> +}
> +
> +static int
> +ipmb_setup(ipmbserv_data_t *ipmb)
> +{
> +    struct ipmb_data *info;
> +
> +    info = malloc(sizeof(*info));
> +    if (!info)
> +	return -1;
> +    memset(info, 0, sizeof(*info));
> +    ipmb->codec_info = info;
> +    ipmb->connected = 1;
> +    return 0;
> +}
> +
> +int
> +ipmb_read_config(char **tokptr, sys_data_t *sys, const char **errstr)
> +{
> +    ipmbserv_data_t *ipmb;
> +    unsigned int chan_num;
> +    int err;
> +    const char *tok;
> +
> +    err = get_uint(tokptr, &chan_num, errstr);
> +    if (!err && (chan_num >= IPMI_MAX_CHANNELS)) {
> +	return -1;
> +    }
> +
> +    /*
> +     * Primary IPMB associated with channel 0 was already
> +     * initialized in ipmi_mc_alloc_unconfigured.
> +     * So skip the check for channel already in use if
> +     * ipmb is listed in the config file (lan.conf).
> +     */
> +    if (chan_num != 0) {
> +	if (sys->chan_set[chan_num] != NULL) {
> +	    *errstr = "Channel already in use";
> +	    return -1;
> +	}
> +    }
> +
> +    tok = mystrtok(NULL, " \t\n", tokptr);
> +    if (!tok || strncmp(tok, "ipmidev", 7)) {
> +	*errstr = "Config file missing argument ipmidev";
> +	return -1;
> +    }
> +
> +    tok = mystrtok(NULL, " \t\n", tokptr);
> +    if (!tok || strncmp(tok, "/dev/", 5)) {
> +	*errstr = "Missing parameter for ipmidev";
> +	return -1;
> +    }
> +
> +    if (strlen(tok) > IPMIDEV_MAX_SIZE) {
> +	*errstr = "Length of device file name %s > 15";
> +	return -1;
> +    }
> +
> +    strcpy(sys->ipmidev, tok);
> +    if (!(sys->ipmidev)) {
> +	*errstr = "Unable to set ipmidev";
> +	return -1;
> +    }
> +
> +    ipmb = malloc(sizeof(*ipmb));
> +    if (!ipmb) {
> +	*errstr = "Out of memory";
> +	return -1;
> +    }
> +    memset(ipmb, 0, sizeof(*ipmb));
> +
> +    ipmb->codec = (ser_codec_t *)malloc(sizeof(ser_codec_t));
> +    if (!ipmb->codec) {
> +	*errstr = "Out of memory";
> +	return -1;
> +    }
> +
> +    ipmb->channel.session_support = IPMI_CHANNEL_SESSION_LESS;
> +    ipmb->channel.medium_type = IPMI_CHANNEL_MEDIUM_IPMB;
> +    ipmb->channel.protocol_type = IPMI_CHANNEL_PROTOCOL_IPMB;
> +
> +    ipmb->channel.channel_num = chan_num;
> +
> +    ipmb->codec->handle_char = ipmb_handle_char;
> +    ipmb->codec->send = ipmb_send;
> +    ipmb->codec->setup = ipmb_setup;
> +
> +    ipmb->sysinfo = sys;
> +    ipmb->channel.chan_info = ipmb;
> +
> +    if (chan_num == 0)
> +	ipmb->channel.prim_ipmb_in_cfg_file = 1;
> +    else
> +	ipmb->channel.prim_ipmb_in_cfg_file = 0;
> +
> +    sys->chan_set[chan_num] = &ipmb->channel;
> +
> +    return 0;
> +}
> diff --git a/lanserv/ipmi_sim.c b/lanserv/ipmi_sim.c
> index c4e5b18..0a20e22 100644
> --- a/lanserv/ipmi_sim.c
> +++ b/lanserv/ipmi_sim.c
> @@ -90,6 +90,7 @@
>  #include <OpenIPMI/serv.h>
>  #include <OpenIPMI/lanserv.h>
>  #include <OpenIPMI/serserv.h>
> +#include <OpenIPMI/ipmbserv.h>
>  
>  #include "emu.h"
>  #include <OpenIPMI/persist.h>
> @@ -103,6 +104,7 @@ static char *command_string = NULL;
>  static char *command_file = NULL;
>  static int debug = 0;
>  static int nostdio = 0;
> +static char g_ipmi_dev[15];
>  
>  /*
>   * Keep track of open sockets so we can close them on exec().
> @@ -567,6 +569,86 @@ ser_channel_init(void *info, channel_t *chan)
>      return err;
>  }
>  
> +static int
> +ipmb_open(char *ipmi_dev)
> +{
> +    int ipmi_fd;
> +
> +    if (!ipmi_dev) {
> +	fprintf(stderr, "ipmi_dev is not specified\n");
> +	return -1;
> +    }
> +
> +    ipmi_fd = open(ipmi_dev, O_RDWR);
> +    if (ipmi_fd == -1)
> +        fprintf(stderr, "Could not open ipmi device\n");
> +
> +    return ipmi_fd;
> +}
> +
> +static void
> +ipmb_data_ready(int fd, void *cb_data, os_hnd_fd_id_t *id)
> +{
> +    ipmbserv_data_t *ipmb = cb_data;
> +    unsigned int  len;
> +    unsigned char msgd[256];
> +
> +    len = read(fd, msgd, sizeof(msgd));
> +
> +    if (ipmb->sysinfo->debug & DEBUG_MSG)
> +        printf(">ipmb_data_ready size %d\n", len);
> +    if (len <= 0) {
> +        if ((len < 0) && (errno == EINTR))
> +            return;
> +
> +        ipmb->os_hnd->remove_fd_to_wait_for(ipmb->os_hnd, id);
> +        close(fd);
> +        ipmb->con_fd = -1;
> +        return;
> +    }
> +
> +    ipmb->bind_fd = -1;
> +    serserv_handle_data(ipmb, msgd, len);
> +    ipmb->bind_fd = 0;
> +    serserv_handle_data(ipmb, msgd, 1);
> +}
> +
> +static int
> +ipmb_channel_init(void *info, channel_t *chan)
> +{
> +    misc_data_t *data = info;
> +    ipmbserv_data_t *ipmb = chan->chan_info;
> +    int err;
> +    int fd;
> +    os_hnd_fd_id_t *fd_id;
> +
> +    ipmb->os_hnd = data->os_hnd;
> +    ipmb->user_info = data;
> +    ipmb->send_out = ser_send;
> +    err = serserv_init(ipmb);
> +
> +    if (err) {
> +        fprintf(stderr, "Unable to init ipmb: 0x%x\n", err);
> +        exit(1);
> +    }
> +
> +    fd = ipmb_open(g_ipmi_dev);
> +    if (fd == -1){
> +        fprintf(stderr, "Unable to open ipmi device file: 0x%x\n", err);
> +        exit(1);
> +    }
> +
> +    ipmb->con_fd = fd;
> +
> +    err = data->os_hnd->add_fd_to_wait_for(data->os_hnd, ipmb->con_fd,
> +                                            ipmb_data_ready, ipmb,
> +                                            NULL, &fd_id);
> +    if (!err)
> +        isim_add_fd(fd);
> +
> +    return err;
> +}
> +
>  static void
>  isim_log(sys_data_t *sys, int logtype, msg_t *msg, const char *format,
>  	 va_list ap, int len)
> @@ -1438,6 +1520,7 @@ main(int argc, const char *argv[])
>      sysinfo.cfree = ifree;
>      sysinfo.lan_channel_init = lan_channel_init;
>      sysinfo.ser_channel_init = ser_channel_init;
> +    sysinfo.ipmb_channel_init = ipmb_channel_init;
>      data.sys = &sysinfo;
>  
>      err = pipe(sigpipeh);
> @@ -1501,6 +1584,9 @@ main(int argc, const char *argv[])
>      if (read_config(&sysinfo, config_file, print_version))
>  	exit(1);
>  
> +    if (sysinfo.ipmidev != NULL)
> +	strcpy(g_ipmi_dev, sysinfo.ipmidev);
> +
>      if (print_version)
>  	exit(0);
>  
> diff --git a/lanserv/lan.conf b/lanserv/lan.conf
> index 37732d4..c1f80b7 100644
> --- a/lanserv/lan.conf
> +++ b/lanserv/lan.conf
> @@ -126,3 +126,13 @@ set_working_mc 0x30
>  # where initstr is the init string passed on the module load line.
>  # It should return 0 on success or an errno no failure.
>  #loadlib "/opt/lib/ipmi_sim_extend.so" "Initialization String"
> +
> +# "ipmb" should be added to the config file of a device
> +# that needs to handle an IPMB request and generate a response
> +# back to the requester.
> +# In the case of an IPMB bridge request for example, the
> +# BMC is considered the requester and the responder device
> +# should have a config file defining the IPMB channel number.
> +# For example:
> +# ipmb <channel number> ipmbdev <device file>
> +# ipmb 2 ipmbdev /dev/ipmb-2
> -- 
> 2.1.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
