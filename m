Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5144B9583E4
	for <lists+openipmi-developer@lfdr.de>; Tue, 20 Aug 2024 12:15:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sgLtk-0008F2-A4;
	Tue, 20 Aug 2024 10:15:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <iivanov@suse.de>) id 1sgLtf-0008Es-6j
 for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Aug 2024 10:15:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+lfdqfFj/R1LaWHAGnf3jFlwh1vTl96qIjSZz7PlMLY=; b=PBZpRqZakIcyjzzqTKkXPP3mQ7
 rKAVXG7PI/xGx7EQC6yBuHrMgeAb9u1sYNO36hK2IqRy1YWo8NUCgjDjHsN0+/gDsUjfZKSi/gNyb
 TsncFsFBnhp5lQ7UOdSMbkvPKVbY05e3Jq9mWiyIIEjCXIt57Dsb4/pNHxySn9DkEmLM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+lfdqfFj/R1LaWHAGnf3jFlwh1vTl96qIjSZz7PlMLY=; b=W2HmMgUcDMST9sdDYNnwiwIj4D
 RAqCC3GhSzDJVnFDjS+NuaDxCkK33KKPrc9Xtf0fuO1rXrgORjWkRbdj0R2Sd+J5eCAB7nzTkoIMF
 Uhy/kEwWrSTVYwSGqqzvVwlZx8WyZxfmynnQydj1APwncDLYt5BBJFYO4AIpITmp2FbM=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sgLtb-0004YA-Pu for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Aug 2024 10:15:24 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 102191FFCB;
 Tue, 20 Aug 2024 10:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1724148912; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+lfdqfFj/R1LaWHAGnf3jFlwh1vTl96qIjSZz7PlMLY=;
 b=T6uX1e1QXt/ujB9hYSC7osZUi0a5Q7Mj57iImKBfzq/Stav8sDQRWNGdx34CJzltPBM5zR
 emjQRwp8UrL0taswO64KvKNycb2OvydMeNuoXXB0aHW/Y4bFyVyTgL9zXsFMe2RO6y6kL+
 wi2kfe3ehsDDiA/h598nvl3jsrD2Vuo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1724148912;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+lfdqfFj/R1LaWHAGnf3jFlwh1vTl96qIjSZz7PlMLY=;
 b=qtctbdnXQpxFAPXYh2H1xmKHIIbt7zQO6AZDTd+QUly2Fg1oXqd/mSJh6g+0v5LKQ7+QOr
 ceOP6bwGo/L8eRDQ==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=njhYoTUj;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=9bRvnyPf
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1724148911; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+lfdqfFj/R1LaWHAGnf3jFlwh1vTl96qIjSZz7PlMLY=;
 b=njhYoTUjIMMRYCaCxp2wULPnYBZGz8kvhWz16IzJZuYtzWpSY7zZYIvlrPK3NG6l+muG5c
 +hzz7ZICYnAHRdCYrJDSb8IAVzLj2BDGaoBEnYMmN6tQYhbUneglbvN+q7LmVYlLrrVuD4
 gZKP0BINuneR6l3WvKtNvXM0Jep1nMs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1724148911;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+lfdqfFj/R1LaWHAGnf3jFlwh1vTl96qIjSZz7PlMLY=;
 b=9bRvnyPf1chMGZ7oTe9RdooRHOd6UUPcse6Mn3PpzX+cEiCPD6yYwqbDpFJsYQqVbjb8a6
 r8BOvXIPACwJcUDQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id E788D13A17;
 Tue, 20 Aug 2024 10:15:10 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id XIbsNa5sxGbtUQAAD6G6ig
 (envelope-from <iivanov@suse.de>); Tue, 20 Aug 2024 10:15:10 +0000
Date: Tue, 20 Aug 2024 13:20:05 +0300
From: "Ivan T. Ivanov" <iivanov@suse.de>
To: corey@minyard.net
Message-ID: <20240820102005.4l2j73jpt7lmwloh@localhost.localdomain>
References: <20240816065458.117986-1-iivanov@suse.de>
 <Zr+Up+94gmPEHwcJ@mail.minyard.net>
 <84eb700ee647cc40e9e99b086a8648e3@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <84eb700ee647cc40e9e99b086a8648e3@suse.de>
X-Rspamd-Queue-Id: 102191FFCB
X-Spam-Level: 
X-Spamd-Result: default: False [-4.51 / 50.00]; BAYES_HAM(-3.00)[99.99%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FUZZY_BLOCKED(0.00)[rspamd.com];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_TRACE(0.00)[0:+];
 ARC_NA(0.00)[]; FROM_HAS_DN(0.00)[];
 DKIM_TRACE(0.00)[suse.de:+];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 TO_DN_NONE(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 FROM_EQ_ENVFROM(0.00)[]; RCVD_TLS_ALL(0.00)[];
 RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
 MISSING_XM_UA(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 RCPT_COUNT_THREE(0.00)[4];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,
 imap1.dmz-prg2.suse.org:rdns, localhost.localdomain:mid]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Spam-Score: -4.51
X-Spam-Flag: NO
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 08-18 12:27, Ivan T. Ivanov wrote: > > > > > 3) It appears
 the response to the GET_DEVICE_ID command, though a > > response is returned, 
 is not valid. The right way to handle this would > > be to d [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.131 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.131 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [195.135.223.131 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sgLtb-0004YA-Pu
Subject: Re: [Openipmi-developer] [PATCH] ipmi:ssif: Exit early when there
 is a SMBus error
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 minyard@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 08-18 12:27, Ivan T. Ivanov wrote:
> 
> > 
> > 3) It appears the response to the GET_DEVICE_ID command, though a
> > response is returned, is not valid.  The right way to handle this would
> > be to do more validation in the ssif_detect() function.  It doesn't do
> > any validation of the response data, and that's really what needs to be
> > done.
> > 
> 
> do_cmd() in ssif_detect() already do validation. Perhaps,
> ssif_probe() should just not return ENODEV in case of error.
> 

Oh, I wanted to say ssif_detect, not ssif_probe. 

Regards,
Ivan



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
