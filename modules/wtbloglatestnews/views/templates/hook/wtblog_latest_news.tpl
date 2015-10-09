<div id="blog_latest_new_home" class="footer-block col-xs-12 col-sm-4">
    <h4><a href="{wtblog::GetSmartBlogLink('wtblog')}">{l s='Latest Blog' mod='wtbloglatestnews'}</a></h4>
    <div class="block_content">
        {if isset($view_data) AND !empty($view_data)}
            {assign var='i' value=1}
			<ul class="row">
            {foreach from=$view_data item=post}
                    {assign var="options" value=null}
                    {$options.id_post = $post.id}
                    {$options.slug = $post.link_rewrite}
                    <li class="col-xs-12">
                        <div class="blog-img">
                             <a href="{wtblog::GetSmartBlogLink('wtblog_post',$options)}">
								<img alt="{$post.title}" class="feat_img_small" src="{$modules_dir}wtblog/views/img/{$post.post_img}-home-small.jpg"/>
							</a>
                        </div>
						<div class="blog-content">
							<h5 class="post_title"><a href="{wtblog::GetSmartBlogLink('wtblog_post',$options)}">{$post.title}</a></h5>
							<p>
								{$post.short_description|truncate:200:'...'|escape:'htmlall':'UTF-8'}
							</p>
						</div>
                    </li>
                {$i=$i+1}
            {/foreach}
			</ul>
        {/if}
     </div>
</div>