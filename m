Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 252C7D43E8
	for <lists+openipmi-developer@lfdr.de>; Fri, 11 Oct 2019 17:12:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iIwam-0007bo-CF; Fri, 11 Oct 2019 15:12:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iIwak-0007bT-7k
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Oct 2019 15:12:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jHgX+byni3Tt7BsG/m4HgXu+YNkMLdLRq+YLswdq1d8=; b=ZQlSmAsdf/8KeC+5o6sZz7hKdZ
 bQ03pML5PS/imhtlZTOP1JpSGF8k/V+wM+SHkCzRdieseD34Oir6rKoOZh9ItGl+5VUv2kiKpwWtj
 2XkWzIvColxLFj8cAEGwmt/JwbnG1s837M9TqU+0ehg7xMMf+hq7iYfDdwhO3Wg4sofg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jHgX+byni3Tt7BsG/m4HgXu+YNkMLdLRq+YLswdq1d8=; b=mDZkhprxp1acHEgpIWOIJKCeCn
 o51QGbW99n+CgLqSPcJXlh4M2aQM3+gWKV/FJm/emcf1VxDFfQzGNcPqUSFTEZZ8+zvTPdDQF+HzD
 d68jO6qFjBF07X0f4dm1bXk/qQB7CVNNuozkj2wiJmdf9lEO5FVD1tv8kw0MENVv8BUU=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iIwai-0066LW-Nn
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Oct 2019 15:12:30 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 08:12:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="219419398"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga004.fm.intel.com with ESMTP; 11 Oct 2019 08:12:21 -0700
Received: from andy by smile with local (Exim 4.92.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iIwaa-0000bg-F3; Fri, 11 Oct 2019 18:12:20 +0300
Date: Fri, 11 Oct 2019 18:12:20 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Joe Perches <joe@perches.com>
Message-ID: <20191011151220.GB32742@smile.fi.intel.com>
References: <20191011145213.65082-1-andriy.shevchenko@linux.intel.com>
 <4eaca9a1bcbf9d87c1fb3c9135876c3ecb72a91b.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4eaca9a1bcbf9d87c1fb3c9135876c3ecb72a91b.camel@perches.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iIwai-0066LW-Nn
Subject: Re: [Openipmi-developer] [PATCH v1] ipmi: use %*ph to print small
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Oct 11, 2019 at 07:58:14AM -0700, Joe Perches wrote:
> On Fri, 2019-10-11 at 17:52 +0300, Andy Shevchenko wrote:
> > Use %*ph format to print small buffer as hex string.
> > 
> > The change is safe since the specifier can handle up to 64 bytes and taking
> > into account the buffer size of 100 bytes on stack the function has never been
> > used to dump more than 32 bytes. Note, this also avoids potential buffer
> > overflow if the length of the input buffer is bigger.
> []
> > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> []
> > @@ -48,14 +48,7 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
> >  static void ipmi_debug_msg(const char *title, unsigned char *data,
> >  			   unsigned int len)
> >  {
> > -	int i, pos;
> > -	char buf[100];
> > -
> > -	pos = snprintf(buf, sizeof(buf), "%s: ", title);
> > -	for (i = 0; i < len; i++)
> > -		pos += snprintf(buf + pos, sizeof(buf) - pos,
> > -				" %2.2x", data[i]);
> > -	pr_debug("%s\n", buf);
> > +	pr_debug("%s: %*ph\n", title, len, buf);
> >  }
> >  #else
> >  static void ipmi_debug_msg(const char *title, unsigned char *data,
> 
> Now you might as well remove the #ifdef DEBUG above this
> and the empty function in the #else too.

It's up to maintainer.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
