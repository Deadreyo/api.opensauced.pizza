# hot.opensauced.pizza supabase

## Description

🍕 The backend for the site that recommends the hottest projects on GitHub.

## Tables

| Name                                                                      | Columns | Comment | Type       |
| ------------------------------------------------------------------------- | ------- | ------- | ---------- |
| [public.repos](public.repos.md)                                           | 18      |         | BASE TABLE |
| [public.contributions](public.contributions.md)                           | 9       |         | BASE TABLE |
| [public.users](public.users.md)                                           | 12      |         | BASE TABLE |
| [public.users_to_repos_stars](public.users_to_repos_stars.md)             | 6       |         | BASE TABLE |
| [public.users_to_repos_votes](public.users_to_repos_votes.md)             | 6       |         | BASE TABLE |
| [public.private_access_tokens](public.private_access_tokens.md)           | 6       |         | BASE TABLE |
| [public.users_to_repos_submissions](public.users_to_repos_submissions.md) | 7       |         | BASE TABLE |
| [public.users_to_repos_stargazers](public.users_to_repos_stargazers.md)   | 6       |         | BASE TABLE |

## Relations

![er](schema.svg)

---

> Generated by [tbls](https://github.com/k1LoW/tbls)
