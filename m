Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 032DD852F6
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Aug 2019 20:27:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hvQec-00082J-14; Wed, 07 Aug 2019 18:27:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <htejun@gmail.com>) id 1hvQea-00082A-Fc
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Aug 2019 18:27:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5PFa4JWDuQYpY0nKXNpEXJUqm083OLKX2xbfgQVH+Ec=; b=VVbhPHipLG3vlJW0SOZOBEXCed
 0x/IXQVbDD0jx4GzUwT5KOc5fRTkfD3XvSQhN8l/b+M8M4SmL/eGqw1pg4QQC/tIFTplkqnJCBTIf
 BAxrjTo1brl8BAmKWk+tittq2Huur0swZbsR2r2D/JL83qxJ0TUmhJwBly0JFJEfdBMw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5PFa4JWDuQYpY0nKXNpEXJUqm083OLKX2xbfgQVH+Ec=; b=h6bapo5Dsm0JwvAkU56MUVWNnG
 o1zfMEMD/3IBxOWgX3OB6ghISButPkm+WVTk5K6it9tCaelU3qZlqD4kebYONrnPkb/Xdo81MNfZY
 1YF0jIy5Xkc53Sfj+xYjsGnA8EixcjuAYj7N1fSBUf5H1mXnkCOf7huhR6jrMihFkDzA=;
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hvQeY-00EHBE-UT
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Aug 2019 18:27:16 +0000
Received: by mail-qt1-f194.google.com with SMTP id w17so8740192qto.10
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 07 Aug 2019 11:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5PFa4JWDuQYpY0nKXNpEXJUqm083OLKX2xbfgQVH+Ec=;
 b=K3uMShq9IQAb6I2sO3P+7I7si5Enmm9GpWrimK80/csietROr4+eLKr1JFQ608AEpt
 0b2NW3fu//AG5WAx3TyqGu58FZDCk8Qu2//0pWqMhB8nK3HJQ5NlQW1g8gqUu9kHKbk7
 HBJkoLddmt+XxkJZeJp0UneKHkCxmNUHOLqG60aYuf7tRUXtnKDFutzJPDZ+EuGec8GB
 czXDVC9nvGxKpl4ZcK4cXukFAJYzgoi5tDiHxHecIyjLfLhgHq9x4bmHt75SgJoOQvBM
 wArgSDuwmk2jPt9KU0Fl6p+cmVCbg3vACdWeCgn6gktdUTyQc4MXKXxCN3jcZGBCLHqI
 k5qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=5PFa4JWDuQYpY0nKXNpEXJUqm083OLKX2xbfgQVH+Ec=;
 b=qYDHT5HcehXMvWwmbqz76dhaZzmDbfL92NSJf8GuMxul5h7Wph9HygP7qCG8GJWsAd
 kYpGrsC86QJ/bHDFlG8I1bqaZUOkUhit6vjV7QgFi/TMGooV/2AjJZNYzRAxc9MYemIF
 2E15IIMQ2LRgnHaxYapNSwX9GdHBLI18XhKq1+CKcFXDD6hc07Z8H5OlkRZ2ev3p7tWg
 FDqoXO6pUGlSE+oRnGJRoow6kou9YWrYJkT3+cspXmDH7DzwliZQ3Dxhyo8+GzYUHsC3
 hSJ1Cvv2uUk0obNzROIbEcr9KwLLGWqFMwQ6TAlXdYck7HK0kInUmuaOlC0N5VKf0ZxA
 Ig6w==
X-Gm-Message-State: APjAAAW4XZ+CKK6bp03Elkh3ctcxjYVh9kqdMF1q9WLuhLPM9HSY+dv7
 eVI9r/sS0Bji3LxMw+mmV60=
X-Google-Smtp-Source: APXvYqzRvuwaQF7v7o8PfFQd4Ik8WrNOZKYeim7pkHTMXo8kLpXA12hh964d0jOigi4w1mM4yxR2Pg==
X-Received: by 2002:ac8:66ce:: with SMTP id m14mr4895305qtp.206.1565202428781; 
 Wed, 07 Aug 2019 11:27:08 -0700 (PDT)
Received: from localhost ([2620:10d:c091:500::6ac7])
 by smtp.gmail.com with ESMTPSA id e125sm37800534qkd.120.2019.08.07.11.27.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 11:27:07 -0700 (PDT)
Date: Wed, 7 Aug 2019 11:27:06 -0700
From: Tejun Heo <tj@kernel.org>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20190807182706.GL136335@devbig004.ftw2.facebook.com>
References: <20190709210643.GJ657710@devbig004.ftw2.facebook.com>
 <20190709214602.GD19430@minyard.net>
 <20190709220908.GL657710@devbig004.ftw2.facebook.com>
 <20190709230144.GE19430@minyard.net>
 <20190710142221.GO657710@devbig004.ftw2.facebook.com>
 <20190801174002.GC5001@minyard.net>
 <20190805181850.GI136335@devbig004.ftw2.facebook.com>
 <20190805211821.GG5001@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805211821.GG5001@minyard.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (htejun[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1hvQeY-00EHBE-UT
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si_intf: use usleep_range()
 instead of busy looping
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@fb.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Aug 05, 2019 at 04:18:21PM -0500, Corey Minyard wrote:
> > Yeah, whatever which makes the common-case behavior avoid busy looping
> > would work.
> 
> Ok, it's queued in linux-next now (and has been for a few days).
> I'll get it into the next kernel release (and I just noticed
> a spelling error and fixed it).

Looks great to me.  Thanks a lot for working on the issue.

-- 
tejun


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
